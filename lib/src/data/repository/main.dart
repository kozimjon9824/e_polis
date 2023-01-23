import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/data/datasource/remote/provider.dart';
import 'package:e_polis/src/data/models/driver_passport_validation/driver_passport_validation.dart';
import 'package:e_polis/src/data/models/input_driver/request/driver_passport_input.dart';
import 'package:e_polis/src/data/models/input_driver/response/driver_passport_response.dart';
import 'package:e_polis/src/data/models/main/main.dart';
import 'package:e_polis/src/data/models/product/product_details.dart';
import 'package:e_polis/src/data/models/vehicle_information/request/vehicle_info_request.dart';
import 'package:e_polis/src/data/models/vehicle_information/response/vehicle_info_response.dart';
import 'package:e_polis/src/domain/repository/main.dart';
import 'package:flutter/foundation.dart';

class MainRepository implements IMainRepository {
  final ApiClient _apiClient;

  MainRepository(this._apiClient);

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
      final response = await _apiClient.getLicenseAgreement();
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
