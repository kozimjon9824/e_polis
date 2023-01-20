import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/data/models/main/main.dart';
import 'package:e_polis/src/data/models/product/product_details.dart';

abstract class IMainRepository {
  Future<Either<Failure, MainScreenData>> getMainData();
  Future<Either<Failure, ProductDetailsResponse>> getProductDetails(String id);
  Future<Either<Failure, dynamic>> getLicenseAgreement();
}
