import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/product/product_details.dart';
import 'package:e_polis/src/domain/repository/main.dart';

class ProductDetailsUseCase
    extends UseCase<ProductDetailsResponse, ProductDetailsParams> {
  final IMainRepository _mainRepository;

  ProductDetailsUseCase(this._mainRepository);

  @override
  Future<Either<Failure, ProductDetailsResponse>> call(
          ProductDetailsParams params) =>
      _mainRepository.getProductDetails(params.id);
}

class ProductDetailsParams {
  final String id;

  ProductDetailsParams(this.id);
}
