import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/bloc/get_data_state.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/features/products/domain/entities/product.dart';
import 'package:diet_maker/features/products/domain/repositories/product_repository.dart';
import 'package:diet_maker/features/products/domain/usecases/get_product_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/src/provider.dart';

part 'product_details_cubit.freezed.dart';

part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<GetDataState<Product>> {
  ProductDetailsCubit(this.getProductDetails)
      : super(const GetDataState.initial());

  factory ProductDetailsCubit.fromContext(BuildContext context) =>
      ProductDetailsCubit(
          GetProductDetailsImpl(context.read<ProductRepository>()));

  final GetProductDetails getProductDetails;

  Future<void> loadProductDetails(int productId) async {
    emit(const GetDataState<Product>.inProgress());
    final Either<Failure, Product> eitherResults =
        await getProductDetails.execute(productId);

    eitherResults.fold(
      (Failure failure) => emit(GetDataState.failure(failure)),
      (Product product) => emit(GetDataState.success(product)),
    );
  }
}
