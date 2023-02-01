import 'dart:io';
import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/presentation/cubits/main_screen_data/main_screen_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../core/themes/app_icons.dart';
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
        appBar: AppBar(title: const Text('Информация профиля')),
        body: BlocBuilder<UpdateProfileCubit, UpdateProfileState>(
          builder: (context, state) {
            var data = state.user;
            lastNameController.text = data?.lastName ?? '';
            nameController.text = data?.firstName ?? '';
            return profileBodyWidget(
                file: state.selectedFile, data: data, context: context);
          },
        ),
        bottomNavigationBar: button(),
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
            label: 'Имя',
            textEditingController: nameController,
            textInputAction: TextInputAction.next,
            validator: (value) => value!.isEmpty ? 'Must not be empty' : null,
          ),
          const SizedBox(height: 24),
          CustomTextField(
            label: 'Фамилия',
            textEditingController: lastNameController,
            textInputAction: TextInputAction.next,
            validator: (value) => value!.isEmpty ? 'Must not be empty' : null,
          ),
          const SizedBox(height: 24),
          phoneCustomPrefixTextField(),
        ],
      ),
    );
  }

  Widget button() {
    return BlocConsumer<UpdateProfileCubit, UpdateProfileState>(
      listener: (context, state) {
        if (state.status == StateStatus.success) {
          context.read<MainScreenDataCubit>().loadData();
          Navigator.pop(context);
          showSuccessMessage(context, 'Successfully updated!');
        }
        if (state.status == StateStatus.error) {
          showErrorMessage(context, state.failure.getLocalizedMessage(context));
        }
      },
      builder: (context, state) {
        return SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: CustomButton(
            text: 'Сохранить изменения',
            isLoading: state.status == StateStatus.loading,
            onTap: () {
              if (formKey.currentState!.validate()) {
                context.read<UpdateProfileCubit>().updateProfile(
                    nameController.text, lastNameController.text);
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

  Widget phoneCustomPrefixTextField() {
    return CustomPrefixTextField(
      label: 'Номер телефона',
      hintText: '(--) --- -- --',
      textInputAction: TextInputAction.done,
      textEditingController: phoneController,
      textInputType: TextInputType.phone,
      inputFormatters: [
        MaskTextInputFormatter(
            mask: '(##) ### ## ##', filter: {"#": RegExp(r'[0-9]')})
      ],
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
