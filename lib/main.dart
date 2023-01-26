import 'package:alice/alice.dart';
import 'package:e_polis/src/presentation/cubits/insurance_basic_filter/insurance_basic_filter_cubit.dart';
import 'package:e_polis/src/presentation/cubits/main_screen_data/main_screen_data_cubit.dart';
import 'package:e_polis/src/presentation/cubits/my_archived_product/archived_products_cubit.dart';
import 'package:e_polis/src/presentation/cubits/my_progress_products/progress_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injector.dart';
import 'src/core/constants/constants.dart';
import 'src/core/routes/app_pages.dart';
import 'src/core/routes/app_routes.dart';
import 'src/core/themes/app_theme.dart';
import 'src/core/utils/utils.dart';
import 'src/presentation/cubits/auth/auth_cubit.dart';
import 'src/presentation/cubits/language/language_cubit.dart';
import 'src/presentation/cubits/my_current_products/current_products_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => inject<AuthCubit>()),
        BlocProvider(
            create: (context) => inject<CurrentProductsCubit>()..loadData()),
        BlocProvider(
            create: (context) => inject<ProgressProductsCubit>()..loadData()),
        BlocProvider(
            create: (context) => inject<ArchivedProductsCubit>()..loadData()),
        BlocProvider(
            create: (context) => inject<MainScreenDataCubit>()..loadData()),
        BlocProvider(
            create: (context) => inject<LanguageCubit>()..loadAppLang()),
        BlocProvider(create: (context) => inject<InsuranceBasicFilterCubit>()),
      ],
      child: BlocBuilder<LanguageCubit, LanguageState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'E-Polis',
            debugShowCheckedModeBanner: false,
            theme: appThemeData,
            onGenerateRoute: RouteGenerateKit().generateKit,
            // navigatorKey: navigatorKey,
            navigatorKey: alice.getNavigatorKey(),
            supportedLocales: const [Locale(EN)],
            locale: const Locale(RU),
            // locale: Locale(state.language),
            // builder: (context, child) {
            //   return ScrollConfiguration(behavior: MyBehavior(), child: child!);
            // },
            initialRoute: AppRoutes.splash,
          );
        },
      ),
    );
  }
}

final alice = Alice(showNotification: true, navigatorKey: navigatorKey);

// class MyBehavior extends ScrollBehavior {
//   @override
//   ScrollPhysics getScrollPhysics(BuildContext context) =>
//       const ClampingScrollPhysics();
// }

//flutter build apk --release
