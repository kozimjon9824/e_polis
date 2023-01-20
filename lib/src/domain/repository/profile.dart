import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';

import '../../data/models/profile_update/profile_update.dart';

abstract class IProfileRepository {
  Future<Either<Failure, dynamic>> updateProfile(ProfileUpdateRequest request);
}
