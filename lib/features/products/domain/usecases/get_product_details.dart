import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/products/domain/entities/product.dart';
import 'package:diet_maker/features/products/domain/repositories/product_repository.dart';

abstract class GetProductDetails extends UseCase<Product, int> {}

class GetProductDetailsImpl extends GetProductDetails {
  GetProductDetailsImpl(this._repository);

  final ProductRepository _repository;

  @override
  Future<Either<Failure, Product>> execute(int productId) async {
    return _repository.getProductDetails(productId);
  }
}
