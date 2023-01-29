import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/data/api/api_client.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/features/products/domain/entities/product.dart';
import 'package:diet_maker/features/products/domain/entities/products_response.dart';
import 'package:diet_maker/features/products/domain/repositories/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  ProductRepositoryImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<Either<Failure, List<Product>>> getProducts() async {
    try {
      final response = await _apiClient.get('product');
      final parsedResponse = ProductsResponse.fromJson(response);
      final products = parsedResponse.items;

      return Right(products);
    } catch (e) {
      return Left(ClientFailure(e));
    }
  }

  @override
  Future<Either<Failure, Product>> getProductDetails(int productId) async {
    try {
      final response = await _apiClient.get('product/$productId');
      final product = Product.fromJson(response);

      return Right(product);
    } catch (e) {
      return Left(ClientFailure(e));
    }
  }
}
