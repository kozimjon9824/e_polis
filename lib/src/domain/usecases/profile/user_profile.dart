import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/user_profile/user_profile.dart';
import 'package:e_polis/src/domain/repository/profile.dart';

class GetUserProfileUseCase extends UseCase<UserProfileResponse, NoParams> {
  final IProfileRepository _profileRepository;

  GetUserProfileUseCase(this._profileRepository);

  @override
  Future<Either<Failure, UserProfileResponse>> call(NoParams params) =>
      _profileRepository.getUserProfile();
}
