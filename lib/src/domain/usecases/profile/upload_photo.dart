import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import '../../../data/models/photo/photo_response.dart';
import '../../repository/profile.dart';

class UploadPhotoUseCase extends UseCase<PhotoResponse, PhotoParam> {
  final IProfileRepository _profileRepository;

  UploadPhotoUseCase(this._profileRepository);

  @override
  Future<Either<Failure, PhotoResponse>> call(PhotoParam params) =>
      _profileRepository.uploadPhoto(params.path);
}

class PhotoParam {
  final String path;

  PhotoParam(this.path);
}
