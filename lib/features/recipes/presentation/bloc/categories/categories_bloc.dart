import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/core/usecases/usecase.dart';
import 'package:diet_maker/features/recipes/domain/entities/category.dart';
import 'package:diet_maker/features/recipes/domain/repositories/recipe_repository.dart';
import 'package:diet_maker/features/recipes/domain/usecases/get_categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/src/provider.dart';

part 'categories_bloc.freezed.dart';
part 'categories_state.dart';

class CategoriesBloc extends Cubit<CategoriesState> {
  CategoriesBloc(this.getCategories) : super(const CategoriesState.initial());

  factory CategoriesBloc.fromContext(BuildContext context) {
    return CategoriesBloc(
      GetCategoriesImpl(
        context.read<RecipeRepository>(),
      ),
    );
  }

  final GetCategories getCategories;

  Future<void> loadCategories() async {
    emit(const CategoriesState.loading());
    final Either<Failure, List<Category>> eitherResults =
        await getCategories.execute(NoParams());
    eitherResults.fold(
        (Failure failure) => emit(CategoriesState.failed(failure)),
        (List<Category> recipes) => emit(CategoriesState.categories(recipes)));
  }
}
