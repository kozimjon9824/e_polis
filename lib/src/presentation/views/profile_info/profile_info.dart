import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_polis/injector.dart';
import 'package:e_polis/src/core/themes/app_text_styles.dart';
import 'package:e_polis/src/presentation/cubits/main_screen_data/main_screen_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../core/themes/app_icons.dart';
import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';
import '../../components/snackbars.dart';
import '../../cubits/update_profile/update_profile_cubit.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  final nameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<UpdateProfileCubit>()..loadUserData(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Информация профиля')),
        body: BlocBuilder<UpdateProfileCubit, UpdateProfileState>(
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => profileBodyWidget(),
                loaded: (data) {
                  lastNameController.text = data?.lastName ?? '';
                  nameController.text = data?.firstName ?? '';
                  return profileBodyWidget(image: data?.photo);
                });
          },
        ),
        bottomNavigationBar: button(),
      ),
    );
  }

  Widget profileBodyWidget({String? image}) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(26),
          child: CachedNetworkImage(
            imageUrl: image ?? '',
            fit: BoxFit.cover,
            height: 116,
            width: 116,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) =>
                SvgPicture.asset(AppIcons.bigAvatar),
          ),
        ),
        const SizedBox(height: 16),
        const Text('Добавить изображение',
            textAlign: TextAlign.center,
            style: AppTextStyles.styleW600S16Grey9),
        const SizedBox(height: 40),
        CustomTextField(
          label: 'Имя',
          textEditingController: nameController,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: 24),
        CustomTextField(
          label: 'Фамилия',
          textEditingController: lastNameController,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: 24),
        phoneCustomPrefixTextField(),
      ],
    );
  }

  Widget button() {
    return BlocConsumer<UpdateProfileCubit, UpdateProfileState>(
      listener: (context, state) {
        state.whenOrNull(
            success: () {
              context.read<MainScreenDataCubit>().loadData();
              showSuccessMessage(context, 'Successfully updated');
            },
            error: (failure) => showErrorMessage(
                context, failure.getLocalizedMessage(context)));
      },
      builder: (context, state) {
        return SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: CustomButton(
            text: 'Сохранить изменения',
            isLoading: state == const UpdateProfileState.loading(),
            onTap: () {
              if (nameController.text.isEmpty ||
                  lastNameController.text.isEmpty) {
                return;
              }
              context
                  .read<UpdateProfileCubit>()
                  .updateProfile(nameController.text, lastNameController.text);
            },
          ),
        );
      },
    );
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
