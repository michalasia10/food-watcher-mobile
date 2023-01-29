import 'package:dartz/dartz.dart';
import 'package:diet_maker/features/products/domain/entities/product.dart';
import 'package:diet_maker/features/products/domain/repositories/product_repository.dart';
import 'package:diet_maker/features/products/domain/usecases/get_product_details.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks.dart';

void main() {
  late ProductRepository _repository;
  late GetProductDetails _getProductDetails;

  final productId = 214235451123;
  final Product _mockedProduct = MockProduct();

  setUp(() {
    _repository = MockProductRepository();
    _getProductDetails = GetProductDetailsImpl(_repository);
  });

  group('GIVEN GetProductDetails use case invoked', () {
    test('WHEN repository emits valid response THEN should emit [Right] with product', () async {
      when(() => _repository.getProductDetails(productId)).thenAnswer((_) async => Right(_mockedProduct));

      final result = await _getProductDetails.execute(productId);

      expect(
        result,
        Right(_mockedProduct),
      );
      verify(() => _repository.getProductDetails(productId)).called(1);
      verifyNoMoreInteractions(_repository);
    });
  });
}
