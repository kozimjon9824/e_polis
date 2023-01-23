import 'package:e_polis/src/data/models/profile_update/profile_update.dart';
import 'package:e_polis/src/data/models/user_profile/user_profile.dart';
import 'package:e_polis/src/domain/usecases/profile/profile_update.dart';
import 'package:e_polis/src/domain/usecases/profile/user_profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';

part 'update_profile_state.dart';

part 'update_profile_cubit.freezed.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  UpdateProfileCubit(this._profileUseCase, this._getUserProfileUseCase)
      : super(const UpdateProfileState.loading());
  final UpdateProfileUseCase _profileUseCase;
  final GetUserProfileUseCase _getUserProfileUseCase;

  void loadUserData() async {
    emit(const UpdateProfileState.loading());
    var result = await _getUserProfileUseCase.call(NoParams());
    result.fold((failure) => emit(UpdateProfileState.error(failure)),
        (response) => emit(UpdateProfileState.loaded(user: response)));
  }

  void updateProfile(String fName, String lName) async {
    emit(const UpdateProfileState.loading());
    var result = await _profileUseCase.call(
        ProfileParams(ProfileUpdateRequest(firstName: fName, lastName: lName)));
    result.fold((failure) => emit(UpdateProfileState.error(failure)),
        (response) => emit(const UpdateProfileState.success()));
  }
}
