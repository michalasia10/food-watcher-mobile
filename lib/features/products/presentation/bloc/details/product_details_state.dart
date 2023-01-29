part of 'product_details_cubit.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = _Initial;

  const factory ProductDetailsState.loading() = _Loading;

  const factory ProductDetailsState.product(Product product) = _Products;

  const factory ProductDetailsState.failed(Failure failure) = _Failed;
}
