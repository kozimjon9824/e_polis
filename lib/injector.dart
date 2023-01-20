import 'package:e_polis/src/data/repository/auth.dart';
import 'package:e_polis/src/data/repository/main.dart';
import 'package:e_polis/src/data/repository/product.dart';
import 'package:e_polis/src/data/repository/profile.dart';
import 'package:e_polis/src/data/repository/settings.dart';
import 'package:e_polis/src/domain/repository/auth.dart';
import 'package:e_polis/src/domain/repository/main.dart';
import 'package:e_polis/src/domain/repository/profile.dart';
import 'package:e_polis/src/domain/usecases/auth/check_user_auth.dart';
import 'package:e_polis/src/domain/usecases/auth/login.dart';
import 'package:e_polis/src/domain/usecases/auth/logout.dart';
import 'package:e_polis/src/domain/usecases/auth/verify.dart';
import 'package:e_polis/src/domain/usecases/main/main_screen_data.dart';
import 'package:e_polis/src/domain/usecases/main/product_details.dart';
import 'package:e_polis/src/domain/usecases/product/archived_product.dart';
import 'package:e_polis/src/domain/usecases/product/current_product.dart';
import 'package:e_polis/src/domain/usecases/product/progress_product.dart';
import 'package:e_polis/src/domain/usecases/profile/profile_update.dart';
import 'package:e_polis/src/domain/usecases/setting/get_app_lang.dart';
import 'package:e_polis/src/presentation/cubits/faq/faq_cubit.dart';
import 'package:e_polis/src/presentation/cubits/license_agreement/license_agreement_cubit.dart';
import 'package:e_polis/src/presentation/cubits/login/login_cubit.dart';
import 'package:e_polis/src/presentation/cubits/main_screen_data/main_screen_data_cubit.dart';
import 'package:e_polis/src/presentation/cubits/my_archived_product/archived_products_cubit.dart';
import 'package:e_polis/src/presentation/cubits/my_current_products/current_products_cubit.dart';
import 'package:e_polis/src/presentation/cubits/my_progress_products/progress_products_cubit.dart';
import 'package:e_polis/src/presentation/cubits/product_details/product_details_cubit.dart';
import 'package:e_polis/src/presentation/cubits/update_profile/update_profile_cubit.dart';
import 'package:e_polis/src/presentation/cubits/verify/verify_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'src/core/constants/constants.dart';
import 'src/core/network_client/network_client.dart';
import 'src/data/datasource/remote/provider.dart';
import 'src/domain/repository/product.dart';
import 'src/domain/repository/settings.dart';
import 'src/domain/usecases/main/license_agreement.dart';
import 'src/domain/usecases/setting/faq.dart';
import 'src/domain/usecases/setting/set_app_lang.dart';
import 'src/presentation/cubits/auth/auth_cubit.dart';
import 'src/presentation/cubits/filter_tab/filter_tab_manager_cubit.dart';
import 'src/presentation/cubits/insurance_manager_stack_views/manage_insurance_stack_views_cubit.dart';
import 'src/presentation/cubits/language/language_cubit.dart';
import 'src/presentation/cubits/language_setting/language_setting_cubit.dart';
import 'src/presentation/cubits/my_product_tab_controller/product_tab_manager_cubit.dart';

final inject = GetIt.instance;

Future<void> initDi() async {
  // cubit initialization : auth
  inject.registerFactory(() => AuthCubit(inject(), inject()));
  inject.registerFactory(() => LoginCubit(inject()));
  inject.registerFactory(() => VerifyCubit(inject()));

  // setting cubits
  inject.registerFactory(() => LanguageCubit(inject(), inject()));
  inject.registerFactory(() => LanguageSettingCubit(inject(), inject()));
  inject.registerFactory(() => FaqCubit(inject()));

  // product
  inject.registerLazySingleton(() => ProductTabManagerCubit());
  inject.registerFactory(() => CurrentProductsCubit(inject()));
  inject.registerFactory(() => ProgressProductsCubit(inject()));
  inject.registerFactory(() => ArchivedProductsCubit(inject()));

  // main cubits
  inject.registerFactory(() => MainScreenDataCubit(inject()));
  inject.registerFactory(() => ManageInsuranceStackViewsCubit());
  inject.registerLazySingleton(() => FilterTabManagerCubit());
  inject.registerFactory(() => ProductDetailsCubit(inject()));
  inject.registerFactory(() => LicenseAgreementCubit(inject()));

  // profile cubit
  inject.registerFactory(() => UpdateProfileCubit(inject()));

  // useCase need to register /----/ auth , register

  // settings
  inject.registerLazySingleton(() => GetAppLangUseCase(inject()));
  inject.registerLazySingleton(() => SetAppLangUseCase(inject()));
  inject.registerLazySingleton(() => FaqUseCase(inject()));

  // main use-cases
  inject.registerLazySingleton(() => GetMainScreenDataUseCase(inject()));
  inject.registerLazySingleton(() => ProductDetailsUseCase(inject()));
  inject.registerLazySingleton(() => LicenseAgreementUseCase(inject()));

  // profile use-cases
  inject.registerLazySingleton(() => UpdateProfileUseCase(inject()));

  //product
  inject.registerLazySingleton(() => MyCurrentProductsUseCase(inject()));
  inject.registerLazySingleton(() => MyInProgressProductsUseCase(inject()));
  inject.registerLazySingleton(() => MyArchivedProductsUseCase(inject()));

  // auth
  inject.registerLazySingleton(() => CheckUserAuthUseCase(inject()));
  inject.registerLazySingleton(() => LogoutUseCase(inject()));
  inject.registerLazySingleton(() => LoginUseCase(inject()));
  inject.registerLazySingleton(() => VerifyUseCase(inject()));

  // repository init
  inject.registerLazySingleton<ISettingRepository>(
      () => SettingRepository(inject(), inject()));
  inject.registerLazySingleton<IMainRepository>(() => MainRepository(inject()));
  inject.registerLazySingleton<IProductRepository>(
      () => ProductRepository(inject(), inject()));
  inject.registerLazySingleton<IProfileRepository>(
      () => ProfileRepository(inject(), inject()));
  inject.registerLazySingleton<IAuthRepository>(
      () => AuthRepository(inject(), inject()));

  // local source init shared pref
  var pref = await SharedPreferences.getInstance();
  inject.registerLazySingleton(() => pref);

  // api client init for network requests dio
  inject.registerLazySingleton(() => NetworkClient());
  var dio = await inject<NetworkClient>().init(inject());
  inject.registerLazySingleton(() => ApiClient(dio, BASE_URL));
}
