import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/data/datasource/remote/provider.dart';
import 'package:e_polis/src/data/models/basic_filter/request/basic_filter_request.dart';
import 'package:e_polis/src/data/models/basic_filter/response/basic_filter_response.dart';
import 'package:e_polis/src/data/models/book/book_model.dart';
import 'package:e_polis/src/data/models/contract_information/request/contract_info_request.dart';
import 'package:e_polis/src/data/models/contract_information/response/contract_info_response.dart';
import 'package:e_polis/src/data/models/driver_passport_validation/driver_passport_validation.dart';
import 'package:e_polis/src/data/models/input_driver/request/driver_passport_input.dart';
import 'package:e_polis/src/data/models/input_driver/response/driver_passport_response.dart';
import 'package:e_polis/src/data/models/insurance_details/insurance_details.dart';
import 'package:e_polis/src/data/models/main/main.dart';
import 'package:e_polis/src/data/models/notification/notification_model.dart';
import 'package:e_polis/src/data/models/product/product_details.dart';
import 'package:e_polis/src/data/models/select_values/select_values.dart';
import 'package:e_polis/src/data/models/vehicle_information/request/vehicle_info_request.dart';
import 'package:e_polis/src/data/models/vehicle_information/response/vehicle_info_response.dart';
import 'package:e_polis/src/domain/repository/main.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/constants/constants.dart';
import '../../core/utils/utils.dart';

class MainRepository implements IMainRepository {
  final ApiClient _apiClient;
  final SharedPreferences _preferences;

  MainRepository(this._apiClient, this._preferences);

  @override
  Future<Either<Failure, MainScreenData>> getMainData() async {
    try {
      final response = await _apiClient.getMainScreenData();
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
  Future<Either<Failure, ProductDetailsResponse>> getProductDetails(
      String id) async {
    try {
      final response = await _apiClient.getProductDetails(id);
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
  Future<Either<Failure, dynamic>> getLicenseAgreement() async {
    try {
      final lang = _preferences.getString(APP_LANGUAGE);
      String url = 'license-agreement_${lang ?? 'ru'}.html';
      final response = await _apiClient.getLicenseAgreement(url);
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
  Future<Either<Failure, DriverPassportInputResponse>> addDriver(
      DriverPassportInputRequest request) async {
    try {
      final response = await _apiClient.addDriver(request);
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      if (e.response?.statusCode == 400) {
        return Left(GeneralFailure(e.response?.data?['message'] ?? ''));
      }
      if (e.response?.statusCode == 500) {
        return const Left(NoLicenceFoundFailure());
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
  Future<Either<Failure, VehicleInfoResponse>> checkVehicleInfo(
      VehicleInfoRequest request) async {
    try {
      final response = await _apiClient.checkVehicleInfo(request);
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      if (e.response?.statusCode == 400) {
        return Left(GeneralFailure(e.response?.data?['message'] ?? ''));
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
  Future<Either<Failure, dynamic>> validateDriverPassport(
      DriverPassportValidation request) async {
    try {
      final response = await _apiClient.validateDriverPassport(request);
      return Right(response);
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      if (e.error is SocketException) {
        return const Left(ConnectionFailure());
      }
      if (e.response?.statusCode == 400) {
        return Left(GeneralFailure(e.response?.data?['message'] ?? ''));
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
  Future<Either<Failure, BasicFilterResponse>> getInsurances(
      BasicFilterRequest request) async {
    try {
      final response = await _apiClient.getInsurances(request);
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
  Future<Either<Failure, InsuranceDetails>> getInsuranceDetails(
      String id, BasicFilterRequest request) async {
    try {
      final response = await _apiClient.getInsuranceDetails(id, request);
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
  Future<Either<Failure, bool>> bookInsurance(
      String id, BookModel request) async {
    try {
      final response = await _apiClient.bookInsurance(id, request);
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
            : GeneralFailure(e.response?.data?['message'] ?? ''),
      );
    } on Object catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }

  @override
  Future<Either<Failure, SelectValues>> getDropDownValue() async {
    try {
      final response = await _apiClient.getDropDownValues();
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
  Future<Either<Failure, NotificationResponse>> getNotifications(
      int page, int limit) async {
    try {
      final response = await _apiClient.getNotifications(page, limit);
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

  /// get user id
  String _getUserId() {
    String id = parseJwt(_preferences.getString(ACCESS_TOKEN).toString())['id']
        .toString();
    return id;
  }

  @override
  Future<Either<Failure, ContractInfoResponse>> getContractInfo(
      String productId, ContractInfoRequest request) async {
    try {
      final response =
          await _apiClient.getContractInformation(productId, request);
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
