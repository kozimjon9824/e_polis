import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/data/models/user_profile/user_profile.dart';

import '../../data/models/photo/photo_response.dart';
import '../../data/models/profile_update/profile_update.dart';

abstract class IProfileRepository {
  Future<Either<Failure, dynamic>> updateProfile(ProfileUpdateRequest request);
  Future<Either<Failure, UserProfileResponse>> getUserProfile();
  Future<Either<Failure, PhotoResponse>> uploadPhoto(String path);
}
