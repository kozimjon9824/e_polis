part of 'update_profile_cubit.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState.initial() = _Initial;

  const factory UpdateProfileState.loading() = _Loading;

  const factory UpdateProfileState.loaded({UserProfileResponse? user}) =
      _Loaded;

  const factory UpdateProfileState.success() = _Success;

  const factory UpdateProfileState.error(Failure failure) = _Error;
}
