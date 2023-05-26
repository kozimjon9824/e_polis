import 'package:e_polis/src/presentation/views/add_polis/add_polis.dart';
import 'package:e_polis/src/presentation/views/basic_filter_result/basic_filter_result.dart';
import 'package:e_polis/src/presentation/views/card_inputs/card_inputs.dart';
import 'package:e_polis/src/presentation/views/change_language/language_page.dart';
import 'package:e_polis/src/presentation/views/help_center/help_center.dart';
import 'package:e_polis/src/presentation/views/insurance_basic_filter/calculate_price.dart';
import 'package:e_polis/src/presentation/views/insurance_register/insurance_register.dart';
import 'package:e_polis/src/presentation/views/insurcance_details/insurance_details.dart';
import 'package:e_polis/src/presentation/views/language/language_page.dart';
import 'package:e_polis/src/presentation/views/license_agreement/license_agreement.dart';
import 'package:e_polis/src/presentation/views/login/login.dart';
import 'package:e_polis/src/presentation/views/login/verify.dart';
import 'package:e_polis/src/presentation/views/main_tabs/main_tab.dart';
import 'package:e_polis/src/presentation/views/notification_setting/notification_setting.dart';
import 'package:e_polis/src/presentation/views/notifications/notifications.dart';
import 'package:e_polis/src/presentation/views/onboarding/onboarding_page.dart';
import 'package:e_polis/src/presentation/views/payment_success/payment_success.dart';
import 'package:e_polis/src/presentation/views/profile_info/profile_info.dart';
import 'package:e_polis/src/presentation/views/splash/splash_page.dart';
import 'package:e_polis/src/presentation/views/travel_basic_selections/travel_basic_selections_page.dart';
import 'package:e_polis/src/presentation/views/verification_success/verification_success.dart';
import 'package:e_polis/src/presentation/views/verify_change_phone/verify_phone.dart';
import 'package:flutter/material.dart';
import '../../presentation/views/about/about.dart';
import '../../presentation/views/my_polis_details/polis_details.dart';
import 'app_routes.dart';

class RouteGenerateKit {
  Route? generateKit(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashPage(),
          settings: RouteSettings(arguments: args),
        );
      case AppRoutes.language:
        return simpleRoute(const LanguagePage());
      case AppRoutes.changeLanguage:
        return simpleRoute(const ChangeLanguagePage());
      case AppRoutes.login:
        return simpleRoute(const LoginPage());
      case AppRoutes.verify:
        return MaterialPageRoute(
          builder: (context) => const VerifyPage(),
          settings: RouteSettings(arguments: args),
        );
      case AppRoutes.onBoarding:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
          settings: RouteSettings(arguments: args),
        );
      case AppRoutes.main:
        return MaterialPageRoute(
          builder: (context) => const MainPage(),
          settings: RouteSettings(arguments: args),
        );
      case AppRoutes.profileInfo:
        return simpleRoute(const ProfileInfo());
      case AppRoutes.notificationSetting:
        return simpleRoute(const NotificationSettingPage());
      case AppRoutes.about:
        return simpleRoute(const AboutPage());
      case AppRoutes.addPolis:
        return simpleRoute(const AddPolisPage());
      case AppRoutes.insuranceBasicFilter:
        return MaterialPageRoute(
          builder: (context) => const InsuranceBasicFilterPage(),
          settings: RouteSettings(arguments: args),
        );
      case AppRoutes.basicFilterResult:
        return MaterialPageRoute(
          builder: (context) => const BasicFilterResultPage(),
          settings: RouteSettings(arguments: args),
        );
      case AppRoutes.insuranceDetails:
        return MaterialPageRoute(
          builder: (context) => const InsuranceDetailsPage(),
          settings: RouteSettings(arguments: args),
        );
      case AppRoutes.verificationSuccess:
        return simpleRoute(const VerificationSuccessPage());
      case AppRoutes.licenseAgreement:
        return simpleRoute(const LicenseAgreementPage());
      case AppRoutes.insuranceRegistration:
        return MaterialPageRoute(
          builder: (context) => const InsuranceRegistrationPage(),
          settings: RouteSettings(arguments: args),
        );
      case AppRoutes.cardInput:
        return MaterialPageRoute(
          builder: (context) => const CardInputsPage(),
          settings: RouteSettings(arguments: args),
        );
      case AppRoutes.helperCenter:
        return MaterialPageRoute(
          builder: (context) => const HelperCenterPage(),
          settings: RouteSettings(arguments: args),
        );
      case AppRoutes.notification:
        return simpleRoute(const NotificationPage());
      case AppRoutes.verifyPhone:
        return MaterialPageRoute(
          builder: (context) => const VerifyChangePhonePage(),
          settings: RouteSettings(arguments: args),
        );
      case AppRoutes.paymentSuccess:
        return MaterialPageRoute(
          builder: (context) => const PaymentSuccessPage(),
          settings: RouteSettings(arguments: args),
        );
      case AppRoutes.polisDetails:
        return MaterialPageRoute(
          builder: (context) => const PolisDetailsPage(),
          settings: RouteSettings(arguments: args),
        );

      case AppRoutes.travelBasic:
        return MaterialPageRoute(
          builder: (context) => const TravelBasicSelectionPage(),
          settings: RouteSettings(arguments: args),
        );
    }
    return null;
  }

  simpleRoute(Widget route) => MaterialPageRoute(builder: (context) => route);
}
