import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/domain/repository/product.dart';

import '../../../data/models/add_product/add_product.dart';

class AddProductUseCase extends UseCase<dynamic, AddProductParams> {
  final IProductRepository _productRepository;

  AddProductUseCase(this._productRepository);

  @override
  Future<Either<Failure, dynamic>> call(AddProductParams params) =>
      _productRepository.addProduct(params.request);
}

class AddProductParams {
  final AddProductRequest request;

  AddProductParams(this.request);
}
