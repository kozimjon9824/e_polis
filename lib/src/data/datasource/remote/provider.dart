import 'package:dio/dio.dart';
import 'package:e_polis/src/data/models/help_data/help_data.dart';
import 'package:e_polis/src/data/models/login/login.dart';
import 'package:e_polis/src/data/models/product/product_details.dart';
import 'package:e_polis/src/data/models/profile_update/profile_update.dart';
import 'package:e_polis/src/data/models/verify/request/verify.dart';
import 'package:e_polis/src/data/models/verify/response/verify_response.dart';
import 'package:retrofit/retrofit.dart';
import '../../../core/constants/constants.dart';
import '../../models/main/main.dart';
import '../../models/my_products/product_data.dart';

part 'provider.g.dart';

//flutter packages pub run build_runner build --delete-conflicting-outputs
@RestApi(baseUrl: BASE_URL)
abstract class ApiClient {
  factory ApiClient(Dio dio, String baseUrl) {
    dio.options = BaseOptions(receiveTimeout: 3000, connectTimeout: 3000);
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
      @Path('id') String id, @Body() ProfileUpdateRequest request);

  @GET('users/{userId}/products/current')
  Future<MyProductData> getMyCurrentProduct(@Path('userId') String id);

  @GET('users/{userId}/products/in-progress')
  Future<MyProductData> getMyInProcessProduct(@Path('userId') String id);

  @GET('users/{userId}/products/archived')
  Future<MyProductData> getMyArchivedProduct(@Path('userId') String id);

  @GET('license-agreement.html')
  Future<dynamic> getLicenseAgreement();

  @GET('faq')
  Future<HelpData> getFaq();
}
