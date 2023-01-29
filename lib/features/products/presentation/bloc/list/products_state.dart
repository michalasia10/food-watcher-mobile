part of 'products_cubit.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = _Initial;

  const factory ProductsState.loading() = _Loading;

  const factory ProductsState.products(List<Product> products) = _Products;

  const factory ProductsState.failed(Failure failure) = _Failed;
}
