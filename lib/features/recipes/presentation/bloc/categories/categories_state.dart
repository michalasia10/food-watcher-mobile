part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _Initial;

  const factory CategoriesState.loading() = _Loading;

  const factory CategoriesState.categories(List<Category> categories) =
      _Categories;

  const factory CategoriesState.failed(Failure failure) = _Failed;
}
