import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_polis/src/core/constants/constants.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/data/datasource/remote/provider.dart';
import 'package:e_polis/src/data/models/login/login.dart';
import 'package:e_polis/src/data/models/verify/request/verify.dart';
import 'package:e_polis/src/data/models/verify/response/verify_response.dart';
import 'package:e_polis/src/domain/repository/auth.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository extends IAuthRepository {
  final ApiClient _apiClient;
  final SharedPreferences _preferences;

  AuthRepository(this._apiClient, this._preferences);

  @override
  Future<Either<Failure, dynamic>> login(LoginRequest request) async {
    try {
      final response = await _apiClient.login(request);
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
  Future<Either<Failure, VerifyResponse>> verify(VerifyRequest request) async {
    try {
      final response = await _apiClient.verify(request);
      // await _preferences.setString(ACCESS_TOKEN, response.accessToken ?? '');
      // await _preferences.setString(REFRESH_TOKEN, response.refreshToken ?? '');
      await Future.wait([
        _preferences.setString(ACCESS_TOKEN, response.accessToken ?? ''),
        _preferences.setString(REFRESH_TOKEN, response.refreshToken ?? '')
      ]);
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
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

  @override
  Future<Either<Failure, bool>> checkUserAuth() async {
    try {
      final token = _preferences.getString(ACCESS_TOKEN) ?? '';
      return Right(token.isNotEmpty);
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
  Future<Either<Failure, bool>> logout() async {
    try {
      await Future.wait([
        _preferences.setString(ACCESS_TOKEN, ''),
        _preferences.setString(REFRESH_TOKEN, '')
      ]);
      return const Right(true);
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
