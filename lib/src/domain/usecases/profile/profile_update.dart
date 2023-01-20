import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/profile_update/profile_update.dart';

import '../../repository/profile.dart';

class UpdateProfileUseCase extends UseCase<dynamic, ProfileParams> {
  final IProfileRepository _profileRepository;

  UpdateProfileUseCase(this._profileRepository);

  @override
  Future<Either<Failure, dynamic>> call(ProfileParams params) =>
      _profileRepository.updateProfile(params.request);
}

class ProfileParams {
  final ProfileUpdateRequest request;

  ProfileParams(this.request);
}
