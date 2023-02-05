part of 'update_profile_cubit.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState(
      {@Default(StateStatus.unknown) StateStatus status,
      UserProfileResponse? user,
      File? selectedFile,
      @Default(false) bool isPhoneVerify,
      @Default(UnknownFailure()) Failure failure}) = _UpdateProfileState;
}
