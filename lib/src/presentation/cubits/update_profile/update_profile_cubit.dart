import 'package:e_polis/src/data/models/profile_update/profile_update.dart';
import 'package:e_polis/src/domain/usecases/profile/profile_update.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/error/error.dart';
part 'update_profile_state.dart';
part 'update_profile_cubit.freezed.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  UpdateProfileCubit(this._profileUseCase)
      : super(const UpdateProfileState.initial());
  final UpdateProfileUseCase _profileUseCase;

  void updateProfile(String fName, String lName) async {
    emit(const UpdateProfileState.loading());
    var result = await _profileUseCase.call(
        ProfileParams(ProfileUpdateRequest(firstName: fName, lastName: lName)));
    result.fold((failure) => emit(UpdateProfileState.error(failure)),
        (response) => emit(const UpdateProfileState.loaded()));
  }
}
