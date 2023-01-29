import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/bloc/get_data_state.dart';
import 'package:diet_maker/features/products/domain/entities/product.dart';
import 'package:diet_maker/features/products/domain/usecases/get_product_details.dart';
import 'package:diet_maker/features/products/presentation/bloc/details/product_details_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks.dart';

void main() {
  late GetProductDetails mockedGetProductDetailsUseCase;

  setUp(() {
    mockedGetProductDetailsUseCase = MockGetProductDetails();
  });

  group('Get product details test', () {
    final int sampleProductId = 29239489529349;
    final Product sampleProduct = MockProduct();

    blocTest<ProductDetailsCubit, GetDataState<Product>>(
      'emits [inProgress, success] with product details',
      build: () {
        when(() => mockedGetProductDetailsUseCase.execute(sampleProductId))
            .thenAnswer((_) async => Right(sampleProduct));

        return ProductDetailsCubit(mockedGetProductDetailsUseCase);
      },
      act: (ProductDetailsCubit bloc) => bloc.loadProductDetails(sampleProductId),
      expect: () => <GetDataState<Product>>[
        const GetDataState.inProgress(),
        GetDataState.success(sampleProduct)
      ],
      verify: (_) {
        verify(() => mockedGetProductDetailsUseCase.execute(sampleProductId));
        verifyNoMoreInteractions(mockedGetProductDetailsUseCase);
      },
    );
  });
}
