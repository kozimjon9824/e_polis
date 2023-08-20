import 'package:dartz/dartz.dart';
import 'package:e_polis/src/data/models/passport_data_response/passport_data_response.dart';
import 'package:e_polis/src/data/models/travel_booking/travel_booking_request.dart';
import 'package:e_polis/src/data/models/travel_calculator/calculator_request/calculator_request.dart';
import 'package:e_polis/src/data/models/travel_calculator/calculator_response/calculator_response.dart';
import '../../core/error/error.dart';
import '../../data/models/countries/countries.dart';
import '../../data/models/input_driver/request/driver_passport_input.dart';
import '../../data/models/multi_days/multi_days.dart';
import '../../data/models/policy_type/policy_type.dart';
import '../../data/models/programms/programms.dart';
import '../../data/models/travelers_type/travelers_type.dart';
import '../../data/models/trip_purpose/trip_purpose.dart';

abstract class ITravelRepository {
  Future<Either<Failure, Countries>> getCountries();

  Future<Either<Failure, Programs>> getPrograms();

  Future<Either<Failure, TripPurpose>> getTripPurpose();

  Future<Either<Failure, TravelersType>> getTravelTypes();

  Future<Either<Failure, MultiDays>> getMultiDays();

  Future<Either<Failure, PolicyType>> getPolicyType();

  Future<Either<Failure, TravelCalResponse>> calculateTravel(
    TravelCalRequest request,
  );

  Future<Either<Failure, bool>> travelBooking(
    String id,
    TravelBookingRequest request,
  );

  Future<Either<Failure, PassportDataResponse>> getInformationByPassport(
    DriverPassportInputRequest request,
  );
}
