import 'package:dio/dio.dart';
import 'package:e_polis/src/data/models/multi_days/multi_days.dart';
import 'package:e_polis/src/data/models/programms/programms.dart';
import 'package:e_polis/src/data/models/travel_calculator/calculator_response/calculator_response.dart';
import 'package:e_polis/src/data/models/travelers_type/travelers_type.dart';
import 'package:e_polis/src/data/models/trip_purpose/trip_purpose.dart';
import 'package:retrofit/retrofit.dart' as retrofit;
import '../../../../core/constants/constants.dart';
import '../../../models/countries/countries.dart';
import '../../../models/policy_type/policy_type.dart';
import '../../../models/travel_calculator/calculator_request/calculator_request.dart';

part 'travel_api_provider.g.dart';

//flutter packages pub run build_runner build --delete-conflicting-outputs
@retrofit.RestApi(baseUrl: TRAVEL_BASE_URL)
abstract class TravelApiClient {
  factory TravelApiClient(Dio dio, String baseUrl) {
    dio.options = BaseOptions(
      receiveTimeout: const Duration(seconds: 15),
      connectTimeout: const Duration(seconds: 15),
    );
    return _TravelApiClient(dio, baseUrl: baseUrl);
  }

  @retrofit.GET('countries')
  Future<Countries> getCountries();

  @retrofit.GET('programs')
  Future<Programs> getPrograms();

  @retrofit.GET('trip_purpose')
  Future<TripPurpose> getTripPurpose();

  @retrofit.GET('travelers_type')
  Future<TravelersType> getTravelTypes();

  @retrofit.GET('multi_days')
  Future<MultiDays> getMultiDays();

  @retrofit.GET('policy_type')
  Future<PolicyType> getPolicyType();

  @retrofit.POST('calc')
  @retrofit.Headers(<String, dynamic>{"Content-Type": "application/json"})
  Future<TravelCalResponse> calculateTravel(
      @retrofit.Body() TravelCalRequest request);
}
