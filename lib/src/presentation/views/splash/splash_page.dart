import 'package:e_polis/src/core/themes/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/themes/app_colors.dart';
import '../../cubits/auth/auth_cubit.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    if (context.mounted) {
      Future.delayed(const Duration(seconds: 2)).then((value) {
        context.read<AuthCubit>().checkUserToAuth();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthenticatedState) {
          Navigator.pushReplacementNamed(context, AppRoutes.main);
        }
        if (state is UnAuthenticatedState) {
          String language = state.lang;
          if (language == '') {
            Navigator.pushReplacementNamed(context, AppRoutes.language);
          } else {
            Navigator.pushReplacementNamed(context, AppRoutes.main);
          }
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(children: const [SizedBox(height: 40)]),
            SvgPicture.asset(AppIcons.appLogo),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SvgPicture.asset(AppIcons.impex),
            ),
          ],
        ),
      ),
    );
  }
}
