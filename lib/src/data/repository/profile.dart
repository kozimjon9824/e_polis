import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/data/datasource/remote/provider.dart';
import 'package:e_polis/src/data/models/delete_account/delete_account_request.dart';
import 'package:e_polis/src/data/models/delete_account_response/delete_account_response.dart';
import 'package:e_polis/src/data/models/photo/photo_response.dart';
import 'package:e_polis/src/data/models/user_profile/user_profile.dart';
import 'package:e_polis/src/domain/repository/profile.dart';
import 'package:flutter/foundation.dart';
import 'package:http_parser/http_parser.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/constants/constants.dart';
import '../../core/utils/utils.dart';
import '../models/profile_update/profile_update.dart';

class ProfileRepository extends IProfileRepository {
  final ApiClient _apiClient;
  final SharedPreferences _preferences;

  ProfileRepository(this._apiClient, this._preferences);

  @override
  Future<Either<Failure, dynamic>> updateProfile(
      ProfileUpdateRequest request) async {
    try {
      final response = await _apiClient.updateProfile(_getUserId(), request);
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      if (e.response?.statusCode == 422) {
        return const Left(EmptyFieldFailure());
      }
      if (e.response?.statusCode == 400) {
        return const Left(WrongCodeFailure());
      }
      return Left(
        (e.response?.statusCode == 401)
            ? const UnAuthorizationFailure()
            : const UnknownFailure(),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  /// get user id
  String _getUserId() {
    String id = parseJwt(_preferences.getString(ACCESS_TOKEN).toString())['id']
        .toString();
    return id;
  }

  @override
  Future<Either<Failure, UserProfileResponse>> getUserProfile() async {
    try {
      final response = await _apiClient.getUserProfile(_getUserId());
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      // if (e.response?.statusCode == 422) {
      //   return const Left(EmptyFieldFailure());
      // }
      return Left(
        (e.response?.statusCode == 401)
            ? const UnAuthorizationFailure()
            : const UnknownFailure(),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, PhotoResponse>> uploadPhoto(String path) async {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      request: true,
      requestHeader: true,
    ));
    try {
      var header = {
        "Authorization": "Bearer ${_preferences.getString(ACCESS_TOKEN)}"
      };
      var image = await MultipartFile.fromFile(
        path, filename: path.split('/').last,
        contentType: MediaType("image", "jpeg"), //important
      );
      FormData formData = FormData.fromMap({'image': image});

      final response = await dio.post('${BASE_URL}files/user-photos',
          data: formData,
          options:
              Options(headers: header, contentType: 'multipart/form-data'));

      PhotoResponse res = PhotoResponse.fromJson(response.data);
      return Right(res);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      // if (e.response?.statusCode == 422) {
      //   return const Left(EmptyFieldFailure());
      // }
      return Left(
        (e.response?.statusCode == 401)
            ? const UnAuthorizationFailure()
            : const UnknownFailure(),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, DeleteAccountResponse>> deleteAccount(
      DeleteAccountRequest request) async {
    try {
      final response = await _apiClient.deleteAccount(_getUserId(), request);
      if (response.state == 'DELETED') {
        await _preferences.setString(ACCESS_TOKEN, '');
        await _preferences.setString(REFRESH_TOKEN, '');
      }
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 401)
            ? const UnAuthorizationFailure()
            : const UnknownFailure(),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, DeleteAccountResponse>> sendOtpCode() async {
    try {
      final response = await _apiClient.sendOtpForDeletion(_getUserId());
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      return Left(
        (e.response?.statusCode == 401)
            ? const UnAuthorizationFailure()
            : const UnknownFailure(),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }
}
