import 'package:dio/dio.dart';
import 'package:e_polis/src/data/models/add_product/add_product.dart';
import 'package:e_polis/src/data/models/basic_filter/request/basic_filter_request.dart';
import 'package:e_polis/src/data/models/book/book_model.dart';
import 'package:e_polis/src/data/models/contract_information/request/contract_info_request.dart';
import 'package:e_polis/src/data/models/contract_information/response/contract_info_response.dart';
import 'package:e_polis/src/data/models/delete_account/delete_account_request.dart';
import 'package:e_polis/src/data/models/delete_account_response/delete_account_response.dart';
import 'package:e_polis/src/data/models/help_data/help_data.dart';
import 'package:e_polis/src/data/models/input_driver/request/driver_passport_input.dart';
import 'package:e_polis/src/data/models/input_driver/response/driver_passport_response.dart';
import 'package:e_polis/src/data/models/insurance_details/insurance_details.dart';
import 'package:e_polis/src/data/models/login/login.dart';
import 'package:e_polis/src/data/models/product/product_details.dart';
import 'package:e_polis/src/data/models/profile_update/profile_update.dart';
import 'package:e_polis/src/data/models/select_values/select_values.dart';
import 'package:e_polis/src/data/models/travel_booking/travel_booking_request.dart';
import 'package:e_polis/src/data/models/user_product/user_product.dart';
import 'package:e_polis/src/data/models/user_profile/user_profile.dart';
import 'package:e_polis/src/data/models/vehicle_information/request/vehicle_info_request.dart';
import 'package:e_polis/src/data/models/vehicle_information/response/vehicle_info_response.dart';
import 'package:e_polis/src/data/models/verify/request/verify.dart';
import 'package:e_polis/src/data/models/verify/response/verify_response.dart';
import 'package:retrofit/retrofit.dart';
import '../../../core/constants/constants.dart';
import '../../models/basic_filter/response/basic_filter_response.dart';
import '../../models/driver_passport_validation/driver_passport_validation.dart';
import '../../models/main/main.dart';
import '../../models/my_products/product_data.dart';
import '../../models/notification/notification_model.dart';

part 'provider.g.dart';

//flutter packages pub run build_runner build --delete-conflicting-outputs
@RestApi(baseUrl: BASE_URL)
abstract class ApiClient {
  factory ApiClient(Dio dio, String baseUrl) {
    dio.options = BaseOptions(
      receiveTimeout: const Duration(seconds: 20),
      connectTimeout: const Duration(seconds: 20),
    );
    return _ApiClient(dio, baseUrl: baseUrl);
  }

  @GET('users/main-screen')
  Future<MainScreenData> getMainScreenData();

  @POST('auth/login')
  Future<dynamic> login(@Body() LoginRequest request);

  @POST('auth/otp')
  Future<VerifyResponse> verify(@Body() VerifyRequest request);

  @GET('products/{id}')
  Future<ProductDetailsResponse> getProductDetails(@Path('id') String id);

  @PATCH('users/{id}')
  Future<dynamic> updateProfile(
    @Path('id') String id,
    @Body() ProfileUpdateRequest request,
  );

  @GET('users/{userId}/products/current')
  Future<MyProductData> getMyCurrentProduct(@Path('userId') String id);

  @GET('users/{userId}/products/in-progress')
  Future<MyProductData> getMyInProcessProduct(@Path('userId') String id);

  @GET('users/{userId}/products/archived')
  Future<MyProductData> getMyArchivedProduct(@Path('userId') String id);

  @GET('{url}')
  Future<dynamic> getLicenseAgreement(@Path('url') String url);

  @GET('faq')
  Future<HelpData> getFaq();

  @GET('users/{id}')
  Future<UserProfileResponse> getUserProfile(@Path('id') String id);

  @POST('users/{userId}/products')
  Future<dynamic> addProduct(
    @Path('userId') String userId,
    @Body() AddProductRequest request,
  );

  @POST('insurance/vehicle-information')
  Future<VehicleInfoResponse> checkVehicleInfo(
    @Body() VehicleInfoRequest request,
  );

  @POST('insurance/driver-passport-validation')
  Future<dynamic> validateDriverPassport(
    @Body() DriverPassportValidation request,
  );

  @POST('insurance/passport-information')
  Future<DriverPassportInputResponse> addDriver(
      @Query('includeDriver') bool include,
      @Body() DriverPassportInputRequest request,
  );

  @POST('products/osago/calculation')
  Future<BasicFilterResponse> getInsurances(
    @Body() BasicFilterRequest request,
  );

  @POST('products/osago/{productId}/calculation')
  Future<InsuranceDetails> getInsuranceDetails(
    @Path('productId') String id,
    @Body() BasicFilterRequest request,
  );

  @POST('products/osago/{id}')
  Future<dynamic> bookInsurance(
    @Path('id') String id,
    @Body() BookModel request,
  );

  @GET('products/osago/dictionary')
  Future<SelectValues> getDropDownValues();

  @GET('notifications')
  Future<NotificationResponse> getNotifications(
    @Query('page') int page,
    @Query('limit') int limit,
  );

  @POST('products/osago/{id}/information')
  Future<ContractInfoResponse> getContractInformation(
    @Path('id') String id,
    @Body() ContractInfoRequest request,
  );

  @GET('users/{userId}/products/{id}')
  Future<UserProduct> getUserProductDetails(
    @Path('userId') String userId,
    @Path('id') String id,
  );

  @DELETE('users/{id}')
  Future<DeleteAccountResponse> deleteAccount(
    @Path('id') String id,
    @Body() DeleteAccountRequest request,
  );

  @DELETE('users/{id}')
  Future<DeleteAccountResponse> sendOtpForDeletion(
    @Path('id') String id,
  );

  @POST('products/travel/{productId}')
  Future<dynamic> travelBooking(
    @Path('productId') String id,
    @Body() TravelBookingRequest request,
  );
}
