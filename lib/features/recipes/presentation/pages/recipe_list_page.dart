import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/features/common/presentation/components/failure_view.dart';
import 'package:diet_maker/features/common/presentation/components/progress_view.dart';
import 'package:diet_maker/features/recipes/domain/entities/recipe.dart';
import 'package:diet_maker/features/recipes/presentation/bloc/list/recipes_bloc.dart';
import 'package:diet_maker/features/recipes/presentation/components/recipe_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecipeListPage extends StatefulWidget {
  RecipeListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _RecipeListPageState();
}

class _RecipeListPageState extends State<RecipeListPage> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    final categoryId = args["categoryId"] as int;

    return BlocProvider(
        create: (BuildContext context) => RecipesBloc.fromContext(context)
          ..loadRecipesForCategory(categoryId),
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: _buildBody(context),
        ));
  }

  Widget _buildBody(BuildContext context) {
    return BlocBuilder<RecipesBloc, RecipesState>(
      builder: (BuildContext context, RecipesState state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const ProgressView(),
          recipes: (List<Recipe> productsData) =>
              _buildRecipesList(context, productsData),
          failed: (Failure failure) =>
              Center(child: FailureView(failure: failure)),
        );
      },
    );
  }

  Widget _buildRecipesList(BuildContext context, List<Recipe> recipesData) =>
      GridView.builder(
        itemCount: recipesData.length,
        itemBuilder: (BuildContext context, int index) =>
            RecipeTile(recipe: recipesData[index]),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              MediaQuery.of(context).orientation == Orientation.landscape
                  ? 3
                  : 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: (2 / 1),
        ),
      );
}
