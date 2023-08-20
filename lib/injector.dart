import 'package:dio/dio.dart';
import 'package:e_polis/src/data/datasource/remote/provider_for_outer_api/travel_api_provider.dart';
import 'package:e_polis/src/data/repository/auth.dart';
import 'package:e_polis/src/data/repository/main.dart';
import 'package:e_polis/src/data/repository/product.dart';
import 'package:e_polis/src/data/repository/profile.dart';
import 'package:e_polis/src/data/repository/settings.dart';
import 'package:e_polis/src/data/repository/travel.dart';
import 'package:e_polis/src/domain/repository/auth.dart';
import 'package:e_polis/src/domain/repository/main.dart';
import 'package:e_polis/src/domain/repository/profile.dart';
import 'package:e_polis/src/domain/repository/travel.dart';
import 'package:e_polis/src/domain/usecases/auth/check_user_auth.dart';
import 'package:e_polis/src/domain/usecases/auth/login.dart';
import 'package:e_polis/src/domain/usecases/auth/logout.dart';
import 'package:e_polis/src/domain/usecases/auth/verify.dart';
import 'package:e_polis/src/domain/usecases/main/add_driver.dart';
import 'package:e_polis/src/domain/usecases/main/book.dart';
import 'package:e_polis/src/domain/usecases/main/check_vehicle_info.dart';
import 'package:e_polis/src/domain/usecases/main/contract_information.dart';
import 'package:e_polis/src/domain/usecases/main/get_drop_down_values.dart';
import 'package:e_polis/src/domain/usecases/main/get_insurances.dart';
import 'package:e_polis/src/domain/usecases/main/insurance_details.dart';
import 'package:e_polis/src/domain/usecases/main/main_screen_data.dart';
import 'package:e_polis/src/domain/usecases/main/product_details.dart';
import 'package:e_polis/src/domain/usecases/main/validate_passport.dart';
import 'package:e_polis/src/domain/usecases/product/add_product.dart';
import 'package:e_polis/src/domain/usecases/product/archived_product.dart';
import 'package:e_polis/src/domain/usecases/product/current_product.dart';
import 'package:e_polis/src/domain/usecases/product/get_product_details.dart';
import 'package:e_polis/src/domain/usecases/product/progress_product.dart';
import 'package:e_polis/src/domain/usecases/profile/delete_account.dart';
import 'package:e_polis/src/domain/usecases/profile/profile_update.dart';
import 'package:e_polis/src/domain/usecases/profile/send_otp_code.dart';
import 'package:e_polis/src/domain/usecases/profile/user_profile.dart';
import 'package:e_polis/src/domain/usecases/setting/get_app_lang.dart';
import 'package:e_polis/src/domain/usecases/travel/countries.dart';
import 'package:e_polis/src/domain/usecases/travel/multi_days.dart';
import 'package:e_polis/src/domain/usecases/travel/policy_type.dart';
import 'package:e_polis/src/domain/usecases/travel/programs.dart';
import 'package:e_polis/src/domain/usecases/travel/travel_booking.dart';
import 'package:e_polis/src/domain/usecases/travel/travel_calculator.dart';
import 'package:e_polis/src/domain/usecases/travel/travel_types.dart';
import 'package:e_polis/src/domain/usecases/travel/trip_purpose.dart';
import 'package:e_polis/src/presentation/cubits/add_driver/add_driver_cubit.dart';
import 'package:e_polis/src/presentation/cubits/add_product/add_product_cubit.dart';
import 'package:e_polis/src/presentation/cubits/book/book_cubit.dart';
import 'package:e_polis/src/presentation/cubits/buy_travel/buy_travel_cubit.dart';
import 'package:e_polis/src/presentation/cubits/change_phone_verify/change_phone_verify_cubit.dart';
import 'package:e_polis/src/presentation/cubits/check_vehicle_info/check_vehicle_info_cubit.dart';
import 'package:e_polis/src/presentation/cubits/confirm_delete_account/confirm_account_delete_cubit.dart';
import 'package:e_polis/src/presentation/cubits/contract_information/contract_information_cubit.dart';
import 'package:e_polis/src/presentation/cubits/drop_down_values/drop_down_values_cubit.dart';
import 'package:e_polis/src/presentation/cubits/faq/faq_cubit.dart';
import 'package:e_polis/src/presentation/cubits/insurance_basic_filter/insurance_basic_filter_cubit.dart';
import 'package:e_polis/src/presentation/cubits/insurance_details/insurance_details_cubit.dart';
import 'package:e_polis/src/presentation/cubits/license_agreement/license_agreement_cubit.dart';
import 'package:e_polis/src/presentation/cubits/limited_driver_tabbar/limited_driver_tab_bar_cubit.dart';
import 'package:e_polis/src/presentation/cubits/login/login_cubit.dart';
import 'package:e_polis/src/presentation/cubits/main_screen_data/main_screen_data_cubit.dart';
import 'package:e_polis/src/presentation/cubits/my_archived_product/archived_products_cubit.dart';
import 'package:e_polis/src/presentation/cubits/my_current_products/current_products_cubit.dart';
import 'package:e_polis/src/presentation/cubits/my_progress_products/progress_products_cubit.dart';
import 'package:e_polis/src/presentation/cubits/notifications/notifications_cubit.dart';
import 'package:e_polis/src/presentation/cubits/product_details/product_details_cubit.dart';
import 'package:e_polis/src/presentation/cubits/send_otp/send_otp_cubit.dart';
import 'package:e_polis/src/presentation/cubits/timer/timer_cubit.dart';
import 'package:e_polis/src/presentation/cubits/travel_attributes/travel_attributes_cubit.dart';
import 'package:e_polis/src/presentation/cubits/travel_booking/travel_booking_cubit.dart';
import 'package:e_polis/src/presentation/cubits/travel_calculator/travel_calculator_cubit.dart';
import 'package:e_polis/src/presentation/cubits/update_profile/update_profile_cubit.dart';
import 'package:e_polis/src/presentation/cubits/user_product_details/user_product_details_cubit.dart';
import 'package:e_polis/src/presentation/cubits/verify/verify_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'src/core/constants/constants.dart';
import 'src/core/network_client/network_client.dart';
import 'src/data/datasource/remote/provider.dart';
import 'src/domain/repository/product.dart';
import 'src/domain/repository/settings.dart';
import 'src/domain/usecases/main/license_agreement.dart';
import 'src/domain/usecases/main/notifications.dart';
import 'src/domain/usecases/profile/upload_photo.dart';
import 'src/domain/usecases/setting/faq.dart';
import 'src/domain/usecases/setting/set_app_lang.dart';
import 'src/domain/usecases/travel/get_info_by_passsport.dart';
import 'src/presentation/cubits/auth/auth_cubit.dart';
import 'src/presentation/cubits/filter_tab/filter_tab_manager_cubit.dart';
import 'src/presentation/cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
import 'src/presentation/cubits/language/language_cubit.dart';
import 'src/presentation/cubits/language_setting/language_setting_cubit.dart';
import 'src/presentation/cubits/limitless_driver_tabbar/limitless_driver_tab_bar_cubit.dart';
import 'src/presentation/cubits/my_product_tab_controller/product_tab_manager_cubit.dart';

final inject = GetIt.instance;

Future<void> initDi() async {
  /// cubit initialization : auth
  inject.registerLazySingleton(() => AuthCubit(inject(), inject(), inject()));
  inject.registerFactory(() => LoginCubit(inject()));
  inject.registerFactory(() => VerifyCubit(inject()));

  // setting cubits
  inject.registerFactory(() => LanguageCubit(inject(), inject()));
  inject.registerFactory(() => LanguageSettingCubit(inject(), inject()));
  inject.registerFactory(() => FaqCubit(inject()));
  inject.registerFactory(() => TimerCubit());

  // product
  inject.registerFactory(() => ProductTabManagerCubit());
  inject.registerFactory(() => CurrentProductsCubit(inject()));
  inject.registerFactory(() => ProgressProductsCubit(inject()));
  inject.registerFactory(() => ArchivedProductsCubit(inject()));
  inject.registerFactory(() => AddProductCubit(inject()));
  inject.registerFactory(() => UserProductDetailsCubit(inject()));

  // main cubits
  inject.registerFactory(() => MainScreenDataCubit(inject()));
  inject.registerFactory(() => ManageInsuranceStackViewsCubit());
  inject.registerFactory(() => FilterTabManagerCubit());
  inject.registerFactory(() => ProductDetailsCubit(inject()));
  inject.registerFactory(() => LicenseAgreementCubit(inject()));
  inject.registerFactory(() => InsuranceBasicFilterCubit(inject()));
  inject.registerFactory(() => InsuranceDetailsCubit(inject()));
  inject.registerFactory(() => CheckVehicleInfoCubit(inject(), inject()));
  inject.registerFactory(() => AddDriverCubit(inject()));
  inject.registerFactory(() => BookCubit(inject()));
  inject.registerFactory(() => LimitedDriverTabBarCubit());
  inject.registerFactory(() => LimitlessDriverTabBarCubit());
  inject.registerFactory(() => DropDownValuesCubit(inject()));
  inject.registerFactory(() => NotificationsCubit(inject()));
  inject.registerFactory(() => ContractInformationCubit(inject()));

  // profile cubit
  inject
      .registerFactory(() => UpdateProfileCubit(inject(), inject(), inject()));
  inject.registerFactory(() => ChangePhoneVerifyCubit(inject()));
  inject.registerFactory(() => ConfirmAccountDeleteCubit(inject()));
  inject.registerFactory(() => SendOtpCubit(inject()));

  // travel
  inject.registerFactory(() => TravelAttributesCubit(
      inject(), inject(), inject(), inject(), inject(), inject()));
  inject.registerFactory(() => TravelCalculatorCubit(inject()));
  inject.registerFactory(() => TravelBookingCubit(inject()));
  inject.registerFactory(() => BuyTravelCubit(inject()));

  /// UseCases

  // settings
  inject.registerLazySingleton(() => GetAppLangUseCase(inject()));
  inject.registerLazySingleton(() => SetAppLangUseCase(inject()));
  inject.registerLazySingleton(() => FaqUseCase(inject()));

  // main use-cases
  inject.registerLazySingleton(() => GetMainScreenDataUseCase(inject()));
  inject.registerLazySingleton(() => ProductDetailsUseCase(inject()));
  inject.registerLazySingleton(() => LicenseAgreementUseCase(inject()));
  inject.registerLazySingleton(() => GetInsurancesUseCase(inject()));
  inject.registerLazySingleton(() => InsuranceDetailsUseCase(inject()));
  inject.registerLazySingleton(() => CheckVehicleInfoUseCase(inject()));
  inject.registerLazySingleton(() => ValidatePassportUseCase(inject()));
  inject.registerLazySingleton(() => AddDriverUseCase(inject()));
  inject.registerLazySingleton(() => BookInsuranceUseCase(inject()));
  inject.registerLazySingleton(() => GetDropDownValuesUseCase(inject()));
  inject.registerLazySingleton(() => NotificationUseCase(inject()));
  inject.registerLazySingleton(() => ContractInfoUseCase(inject()));

  // profile use-cases
  inject.registerLazySingleton(() => UpdateProfileUseCase(inject()));
  inject.registerLazySingleton(() => GetUserProfileUseCase(inject()));
  inject.registerLazySingleton(() => UploadPhotoUseCase(inject()));

  //product
  inject.registerLazySingleton(() => MyCurrentProductsUseCase(inject()));
  inject.registerLazySingleton(() => MyInProgressProductsUseCase(inject()));
  inject.registerLazySingleton(() => MyArchivedProductsUseCase(inject()));
  inject.registerLazySingleton(() => AddProductUseCase(inject()));
  inject.registerLazySingleton(() => UserProductDetailsUseCase(inject()));
  inject.registerLazySingleton(() => DeleteAccountUseCase(inject()));
  inject.registerLazySingleton(() => SendOtpCodeUseCase(inject()));

  // auth
  inject.registerLazySingleton(() => CheckUserAuthUseCase(inject()));
  inject.registerLazySingleton(() => LogoutUseCase(inject()));
  inject.registerLazySingleton(() => LoginUseCase(inject()));
  inject.registerLazySingleton(() => VerifyUseCase(inject()));

  // travel
  inject.registerLazySingleton(() => GetCountriesUseCase(inject()));
  inject.registerLazySingleton(() => GetProgramsUseCase(inject()));
  inject.registerLazySingleton(() => GetTravelTypesUseCase(inject()));
  inject.registerLazySingleton(() => GetTripPurposeUseCase(inject()));
  inject.registerLazySingleton(() => GetPolicyTypeUseCase(inject()));
  inject.registerLazySingleton(() => GetMultiDaysUseCase(inject()));
  inject.registerLazySingleton(() => TravelCalculatorUseCase(inject()));
  inject.registerLazySingleton(() => TravelBookingUseCase(inject()));
  inject.registerLazySingleton(() => GetInfoByPassportUseCase(inject()));

  /// repository init
  inject.registerLazySingleton<ISettingRepository>(
      () => SettingRepository(inject(), inject()));
  inject.registerLazySingleton<IMainRepository>(
      () => MainRepository(inject(), inject()));
  inject.registerLazySingleton<IProductRepository>(
      () => ProductRepository(inject(), inject()));
  inject.registerLazySingleton<IProfileRepository>(
      () => ProfileRepository(inject(), inject()));
  inject.registerLazySingleton<IAuthRepository>(
      () => AuthRepository(inject(), inject()));
  inject.registerLazySingleton<ITravelRepository>(
      () => TravelRepository(inject(), inject(),inject()));

  // local source init shared pref
  var pref = await SharedPreferences.getInstance();
  inject.registerLazySingleton(() => pref);

  // api client init for network requests dio
  inject.registerLazySingleton(() => NetworkClient());
  var dio = await inject<NetworkClient>().init(inject());
  inject.registerLazySingleton(() => ApiClient(dio, BASE_URL));
  final api = Dio(BaseOptions(
    contentType: 'application/json',
    connectTimeout: const Duration(seconds: 20),
    receiveTimeout: const Duration(seconds: 20),
    headers: {
      'Content-Type': 'application/json',
    },
  ));
  api.interceptors.add(LogInterceptor(
    requestBody: true,
    responseBody: true,
    requestHeader: true,
    responseHeader: true,
    request: true,
  ));
  inject.registerLazySingleton(() => TravelApiClient(api, TRAVEL_BASE_URL));
}
