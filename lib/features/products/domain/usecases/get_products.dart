import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/products/domain/entities/product.dart';
import 'package:diet_maker/features/products/domain/repositories/product_repository.dart';

abstract class GetProducts extends UseCase<List<Product>, NoParams> {}

class GetProductsImpl extends GetProducts {
  GetProductsImpl(this._repository);

  final ProductRepository _repository;

  @override
  Future<Either<Failure, List<Product>>> execute(NoParams params) async {
    return _repository.getProducts();
  }
}
