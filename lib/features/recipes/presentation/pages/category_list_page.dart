import 'package:diet_maker/core/app/router.dart';
import 'package:diet_maker/core/error/failures.dart';
import 'package:diet_maker/features/common/presentation/components/failure_view.dart';
import 'package:diet_maker/features/common/presentation/components/progress_view.dart';
import 'package:diet_maker/features/recipes/domain/entities/category.dart';
import 'package:diet_maker/features/recipes/presentation/bloc/categories/categories_bloc.dart';
import 'package:diet_maker/features/recipes/presentation/components/category_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryListPage extends StatefulWidget {
  CategoryListPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) {
          //todo: rename CategoriesBloc -> CategoriesCubit
          return CategoriesBloc.fromContext(context)..loadCategories();
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: _buildBody(context),
        ));
  }

  Widget _buildBody(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (BuildContext context, CategoriesState state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const ProgressView(),
          categories: (List<Category> productsData) =>
              _builderCategoriesDetails(
            context,
            productsData,
          ),
          failed: (Failure failure) => Center(
            child: FailureView(failure: failure),
          ),
        );
      },
    );
  }

  Widget _builderCategoriesDetails(
    BuildContext context,
    List<Category> categoriesData,
  ) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemBuilder: (BuildContext context, int index) {
        var category = categoriesData[index];

        return InkWell(
          onTap: () => Navigator.pushNamed(
            context,
            Routes.kRecipesPage,
            arguments: {"categoryId": category.id},
          ),
          child: CategoryTile(category: category)
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 12);
      },
      itemCount: categoriesData.length,
    );
  }
}
