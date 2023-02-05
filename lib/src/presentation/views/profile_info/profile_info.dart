import 'dart:io';
import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/presentation/cubits/main_screen_data/main_screen_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../generated/l10n.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/themes/app_icons.dart';
import '../../../data/models/profile_update/profile_update.dart';
import '../../../data/models/user_profile/user_profile.dart';
import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';
import '../../components/snackbars.dart';
import '../../cubits/update_profile/update_profile_cubit.dart';
import 'widgets/profile_image.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  final nameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<UpdateProfileCubit>()..loadUserData(),
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context).profileInfo)),
        body: BlocBuilder<UpdateProfileCubit, UpdateProfileState>(
          buildWhen: (pre, cur) => cur.status != StateStatus.loading,
          builder: (context, state) {
            var data = state.user;
            lastNameController.text = data?.lastName ?? '';
            nameController.text = data?.firstName ?? '';
            return profileBodyWidget(
                file: state.selectedFile, data: data, context: context);
          },
        ),
        bottomNavigationBar: saveButton(),
      ),
    );
  }

  Widget profileBodyWidget(
      {File? file, UserProfileResponse? data, required BuildContext context}) {
    return Form(
      key: formKey,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        children: [
          ProfileImage(
              file: file,
              image: data?.photo,
              onTap: () {
                context.read<UpdateProfileCubit>().selectFile(data);
              }),
          const SizedBox(height: 40),
          CustomTextField(
            label: AppLocalizations.of(context).firstName,
            textEditingController: nameController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z ]')),
            ],
            validator: (value) =>
                value!.isEmpty ? AppLocalizations.of(context).notDoEmpty : null,
          ),
          const SizedBox(height: 24),
          CustomTextField(
            label: AppLocalizations.of(context).lastName,
            textEditingController: lastNameController,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z ]')),
            ],
            validator: (value) =>
                value!.isEmpty ? AppLocalizations.of(context).notDoEmpty : null,
          ),
          const SizedBox(height: 24),
          phoneCustomPrefixTextField(),
        ],
      ),
    );
  }

  Widget saveButton() {
    return BlocConsumer<UpdateProfileCubit, UpdateProfileState>(
      listener: (context, state) async {
        if (state.status == StateStatus.success) {
          if (state.isPhoneVerify) {
            Navigator.pushNamed(context, AppRoutes.verifyPhone,
                arguments: ProfileUpdateRequest(
                    firstName: nameController.text,
                    lastName: lastNameController.text,
                    phone: '998${phoneMask.unmaskText(phoneController.text)}'));
          } else {
            context.read<MainScreenDataCubit>().loadData();
            Navigator.pop(context);
            showSuccessMessage(
                context, AppLocalizations.of(context).profileUpdated);
          }
        }
        if (state.status == StateStatus.error) {
          showErrorMessage(context, state.failure.getLocalizedMessage(context));
        }
      },
      builder: (context, state) {
        var data = state.user;
        return SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: CustomButton(
            text: AppLocalizations.of(context).saveChanges,
            isLoading: state.status == StateStatus.loading,
            onTap: () {
              if (formKey.currentState!.validate()) {
                String phone = phoneMask.unmaskText(phoneController.text);
                if (data?.photo != phone && phone.isNotEmpty) {
                  context
                      .read<UpdateProfileCubit>()
                      .updateProfileAndSendOptCode(
                          nameController.text, lastNameController.text, phone);
                } else {
                  context.read<UpdateProfileCubit>().updateProfile(
                      nameController.text, lastNameController.text);
                }
              }
            },
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
  }

  final phoneMask = MaskTextInputFormatter(
      mask: '(##) ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.eager);

  Widget phoneCustomPrefixTextField() {
    return CustomPrefixTextField(
      label: AppLocalizations.of(context).phoneNumber,
      hintText: '(--) --- -- --',
      textInputAction: TextInputAction.done,
      textEditingController: phoneController,
      textInputType: TextInputType.phone,
      inputFormatters: [phoneMask],
      prefixIcon: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 30),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(AppIcons.uz, height: 16, width: 22),
            const SizedBox(width: 4),
            const Text('+998', style: AppTextStyles.styleW500S14Grey9)
          ],
        ),
      ),
    );
  }
}
