import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/data/datasource/remote/provider.dart';
import 'package:e_polis/src/data/datasource/remote/provider_for_outer_api/travel_api_provider.dart';
import 'package:e_polis/src/data/models/countries/countries.dart';
import 'package:e_polis/src/data/models/multi_days/multi_days.dart';
import 'package:e_polis/src/data/models/passport_data_response/passport_data_response.dart';
import 'package:e_polis/src/data/models/policy_type/policy_type.dart';
import 'package:e_polis/src/data/models/programms/programms.dart';
import 'package:e_polis/src/data/models/travel_booking/travel_booking_request.dart';
import 'package:e_polis/src/data/models/travel_calculator/calculator_request/calculator_request.dart';
import 'package:e_polis/src/data/models/travel_calculator/calculator_response/calculator_response.dart';
import 'package:e_polis/src/data/models/travelers_type/travelers_type.dart';
import 'package:e_polis/src/data/models/trip_purpose/trip_purpose.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/constants/constants.dart';
import '../../domain/repository/travel.dart';
import '../models/input_driver/request/driver_passport_input.dart';

class TravelRepository implements ITravelRepository {
  TravelRepository(
    this._apiClient,
    this._client,
    this._preferences,
  );

  final TravelApiClient _apiClient;
  final ApiClient _client;
  final SharedPreferences _preferences;

  @override
  Future<Either<Failure, Countries>> getCountries() async {
    try {
      final response = await _apiClient.getCountries();
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
  Future<Either<Failure, MultiDays>> getMultiDays() async {
    try {
      final response = await _apiClient.getMultiDays();
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
  Future<Either<Failure, PolicyType>> getPolicyType() async {
    try {
      final response = await _apiClient.getPolicyType();
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
  Future<Either<Failure, Programs>> getPrograms() async {
    try {
      final response = await _apiClient.getPrograms();
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
  Future<Either<Failure, TravelersType>> getTravelTypes() async {
    try {
      final response = await _apiClient.getTravelTypes();
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
  Future<Either<Failure, TripPurpose>> getTripPurpose() async {
    try {
      final response = await _apiClient.getTripPurpose();
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
  Future<Either<Failure, TravelCalResponse>> calculateTravel(
      TravelCalRequest request) async {
    try {
      final response = await _apiClient.calculateTravel(request);
      if (response.result != 0) {
        return Left(GeneralFailure(response.resultMessage ?? ''));
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
  Future<Either<Failure, bool>> travelBooking(
      String id, TravelBookingRequest request) async {
    try {
      await _client.travelBooking(id, request);
      return const Right(true);
    } on DioException catch (e) {
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
  Future<Either<Failure, PassportDataResponse>> getInformationByPassport(
      DriverPassportInputRequest request) async {
    try {
      String token = _preferences.getString(ACCESS_TOKEN) ?? '';
      final dio = Dio(BaseOptions(
        contentType: 'application/json',
        baseUrl: 'https://epolis.impexonline.uz/api/insurance/',
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      ));
      dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        responseHeader: true,
      ));
      var response = await dio.post(
        'passport-information?includeDriver=false',
        data: request.toJson(),
      );
      return Right(PassportDataResponse.fromJson(response.data));
    } on DioException catch (e) {
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