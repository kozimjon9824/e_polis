import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/data/datasource/remote/provider.dart';
import 'package:e_polis/src/data/models/my_products/product_data.dart';
import 'package:e_polis/src/domain/repository/product.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constants/constants.dart';
import '../../core/utils/utils.dart';

class ProductRepository extends IProductRepository {
  final ApiClient _apiClient;
  final SharedPreferences _preferences;

  ProductRepository(this._preferences, this._apiClient);

  @override
  Future<Either<Failure, MyProductData>> getMyArchivedProduct() async {
    try {
      final response = await _apiClient.getMyArchivedProduct(_getUserId());
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
  Future<Either<Failure, MyProductData>> getMyCurrentProduct() async {
    try {
      final response = await _apiClient.getMyCurrentProduct(_getUserId());
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
  Future<Either<Failure, MyProductData>> getMyInProgressProduct() async {
    try {
      final response = await _apiClient.getMyInProcessProduct(_getUserId());
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
}
