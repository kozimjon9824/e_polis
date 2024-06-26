import 'package:dartz/dartz.dart';
import 'package:e_polis/src/data/models/my_products/product_data.dart';

import '../../core/error/error.dart';
import '../../data/models/add_product/add_product.dart';

abstract class IProductRepository {
  Future<Either<Failure, MyProductData>> getMyCurrentProduct();
  Future<Either<Failure, MyProductData>> getMyInProgressProduct();
  Future<Either<Failure, MyProductData>> getMyArchivedProduct();
  Future<Either<Failure, dynamic>> addProduct(AddProductRequest request);
}
