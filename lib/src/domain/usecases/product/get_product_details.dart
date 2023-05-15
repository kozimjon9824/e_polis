import 'package:dartz/dartz.dart';
import 'package:e_polis/src/data/models/user_product/user_product.dart';
import '../../../core/error/error.dart';
import '../../../core/usecase/usecase.dart';
import '../../repository/product.dart';

class UserProductDetailsUseCase
    extends UseCase<UserProduct, UserProductParams> {
  final IProductRepository _productRepository;

  UserProductDetailsUseCase(this._productRepository);

  @override
  Future<Either<Failure, UserProduct>> call(UserProductParams params) =>
      _productRepository.getUserProductDetails(params.id);
}

class UserProductParams {
  final String id;

  UserProductParams(this.id);
}
