import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/my_products/product_data.dart';
import 'package:e_polis/src/domain/repository/product.dart';

class MyArchivedProductsUseCase extends UseCase<MyProductData, NoParams> {
  final IProductRepository _productRepository;

  MyArchivedProductsUseCase(this._productRepository);

  @override
  Future<Either<Failure, MyProductData>> call(NoParams params) =>
      _productRepository.getMyArchivedProduct();
}
