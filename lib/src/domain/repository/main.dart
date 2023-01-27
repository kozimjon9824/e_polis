import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/data/models/basic_filter/request/basic_filter_request.dart';
import 'package:e_polis/src/data/models/book/book_model.dart';
import 'package:e_polis/src/data/models/main/main.dart';
import 'package:e_polis/src/data/models/product/product_details.dart';
import 'package:e_polis/src/data/models/select_values/select_values.dart';

import '../../data/models/basic_filter/response/basic_filter_response.dart';
import '../../data/models/driver_passport_validation/driver_passport_validation.dart';
import '../../data/models/input_driver/request/driver_passport_input.dart';
import '../../data/models/input_driver/response/driver_passport_response.dart';
import '../../data/models/insurance_details/insurance_details.dart';
import '../../data/models/vehicle_information/request/vehicle_info_request.dart';
import '../../data/models/vehicle_information/response/vehicle_info_response.dart';

abstract class IMainRepository {
  Future<Either<Failure, MainScreenData>> getMainData();

  Future<Either<Failure, ProductDetailsResponse>> getProductDetails(String id);

  Future<Either<Failure, dynamic>> getLicenseAgreement();

  Future<Either<Failure, VehicleInfoResponse>> checkVehicleInfo(
      VehicleInfoRequest request);

  Future<Either<Failure, dynamic>> validateDriverPassport(
      DriverPassportValidation request);

  Future<Either<Failure, DriverPassportInputResponse>> addDriver(
      DriverPassportInputRequest request);

  Future<Either<Failure, BasicFilterResponse>> getInsurances(
      BasicFilterRequest request);

  Future<Either<Failure, InsuranceDetails>> getInsuranceDetails(
      String id, BasicFilterRequest request);

  Future<Either<Failure, BookModel>> bookInsurance(
      String id, BookModel request);

  Future<Either<Failure, SelectValues>> getDropDownValue();
}
