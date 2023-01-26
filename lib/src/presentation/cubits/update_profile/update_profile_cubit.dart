import 'dart:io';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/data/models/profile_update/profile_update.dart';
import 'package:e_polis/src/data/models/user_profile/user_profile.dart';
import 'package:e_polis/src/domain/usecases/profile/profile_update.dart';
import 'package:e_polis/src/domain/usecases/profile/user_profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';
import '../../../domain/usecases/profile/upload_photo.dart';

part 'update_profile_state.dart';

part 'update_profile_cubit.freezed.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  UpdateProfileCubit(this._profileUseCase, this._getUserProfileUseCase,
      this._uploadPhotoUseCase)
      : super(const UpdateProfileState());
  final UpdateProfileUseCase _profileUseCase;
  final GetUserProfileUseCase _getUserProfileUseCase;
  final UploadPhotoUseCase _uploadPhotoUseCase;

  void loadUserData() async {
    emit(state.copyWith(status: StateStatus.loading));
    var result = await _getUserProfileUseCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: StateStatus.error)),
        (response) =>
            emit(state.copyWith(status: StateStatus.unknown, user: response)));
  }

  void updateProfile(String fName, String lName) async {
    var id = await uploadPhoto();
    if (id == '') return;
    emit(state.copyWith(status: StateStatus.loading));
    var result = await _profileUseCase.call(ProfileParams(
        ProfileUpdateRequest(firstName: fName, lastName: lName, photo: id)));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: StateStatus.error)),
        (response) => emit(state.copyWith(status: StateStatus.success)));
  }

  Future<String?> uploadPhoto() async {
    var file = state.selectedFile;
    if (file == null) return null;
    String path = file.path;
    emit(state.copyWith(status: StateStatus.loading));
    var result = await _uploadPhotoUseCase.call(PhotoParam(path));
    return result.fold((failure) {
      emit(state.copyWith(failure: failure, status: StateStatus.error));
      return '';
    }, (response) => response.id);
  }

  void selectFile(UserProfileResponse? response) async {
    final picker = ImagePicker();
    XFile? pic = await picker.pickImage(
        source: ImageSource.gallery, maxHeight: 512, maxWidth: 512);
    if (pic == null) return;
    emit(UpdateProfileState(user: response, selectedFile: File(pic.path)));
  }
}
