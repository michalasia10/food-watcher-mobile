import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/products/domain/entities/product.dart';
import 'package:diet_maker/features/products/domain/repositories/product_repository.dart';
import 'package:diet_maker/features/products/domain/usecases/get_products.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks.dart';

void main() {
  late ProductRepository _repository;
  late GetProducts _getProducts;

  final List<Product> _mockedProducts = [MockProduct(), MockProduct()];

  setUp(() {
    _repository = MockProductRepository();
    _getProducts = GetProductsImpl(_repository);
  });

  group('GIVEN GetProducts use case invoked', () {
    test(
        'WHEN repository emits valid response THEN should emit [Right] with products',
        () async {
      when(() => _repository.getProducts())
          .thenAnswer((_) async => Right(_mockedProducts));

      final result = await _getProducts.execute(NoParams());

      expect(
        result,
        Right(_mockedProducts),
      );
      verify(() => _repository.getProducts()).called(1);
      verifyNoMoreInteractions(_repository);
    });
  });
}
