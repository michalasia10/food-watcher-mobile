import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/products/domain/entities/product.dart';
import 'package:diet_maker/features/products/domain/repositories/product_repository.dart';
import 'package:diet_maker/features/products/domain/usecases/get_products.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/src/provider.dart';

part 'products_cubit.freezed.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.getProducts) : super(const ProductsState.initial());

  factory ProductsCubit.fromContext(BuildContext context) =>
      ProductsCubit(GetProductsImpl(context.read<ProductRepository>()));

  final GetProducts getProducts;

  Future<void> loadProducts() async {
    emit(const ProductsState.loading());
    final Either<Failure, List<Product>> eitherResults =
        await getProducts.execute(NoParams());

    eitherResults.fold(
      (Failure failure) => emit(ProductsState.failed(failure)),
      (List<Product> products) => emit(ProductsState.products(products)),
    );
  }
}
