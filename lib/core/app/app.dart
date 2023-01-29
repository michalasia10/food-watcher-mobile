import 'package:diet_maker/core/app/router.dart';
import 'package:diet_maker/core/data/api/api_client.dart';
import 'package:diet_maker/core/theme/theme.dart';
import 'package:diet_maker/core/utils/date_utils.dart';
import 'package:diet_maker/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:diet_maker/features/auth/domain/repositories/auth_repository.dart';
import 'package:diet_maker/features/auth/presentation/pages/login_page.dart';
import 'package:diet_maker/features/home/presentation/pages/home_page.dart';
import 'package:diet_maker/features/plan/data/repositories/plan_repository_impl.dart';
import 'package:diet_maker/features/plan/domain/repositories/plan_repository.dart';
import 'package:diet_maker/features/plan/presentation/pages/plan_details_page.dart';
import 'package:diet_maker/features/plan/presentation/pages/plan_page.dart';
import 'package:diet_maker/features/products/data/repositories/product_repository_impl.dart';
import 'package:diet_maker/features/products/domain/repositories/product_repository.dart';
import 'package:diet_maker/features/products/presentation/pages/product_details_page.dart';
import 'package:diet_maker/features/products/presentation/pages/product_list_page.dart';
import 'package:diet_maker/features/recipes/data/repositories/recipe_repository_impl.dart';
import 'package:diet_maker/features/recipes/domain/repositories/recipe_repository.dart';
import 'package:diet_maker/features/recipes/presentation/pages/category_list_page.dart';
import 'package:diet_maker/features/recipes/presentation/pages/recipe_list_page.dart';
import 'package:diet_maker/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'config.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider<ProductRepository>(
            create: (BuildContext context) =>
                ProductRepositoryImpl(ApiClient(host)),
          ),
          RepositoryProvider<RecipeRepository>(
            create: (BuildContext context) =>
                RecipeRepositoryImpl(ApiClient(host)),
          ),
          RepositoryProvider<PlanRepository>(
            create: (BuildContext context) =>
                PlanRepositoryImpl(ApiClient(host)),
          ),
          RepositoryProvider<AuthRepository>(
            create: (BuildContext context) =>
                AuthRepositoryImpl(ApiClient(host)),
          )
        ],
        child: MaterialApp(
            title: 'Diet Maker',
            theme: getTheme(isDark: false),
            darkTheme: getTheme(isDark: true),
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            initialRoute: Routes.kLoginPage,
            routes: {
              Routes.kLoginPage: (context) =>
                  LoginPage(title: context.l10n.loginTitle),
              Routes.kHomePage: (context) =>
                  HomePage(title: context.l10n.homeTitle),
              Routes.kPlanPage: (context) =>
                  PlanPage(title: context.l10n.myWeekTitle),
              Routes.kPlanDetailsPage: (context) =>
                  PlanDetailsPage(title: getCurrentDate(DateTime.now().millisecondsSinceEpoch)),
              Routes.kRecipesPage: (context) =>
                  RecipeListPage(title: context.l10n.chooseMealTitle),
              Routes.kProductsPage: (context) =>
                  ProductListPage(title: context.l10n.chooseProductTitle),
              Routes.kProductDetailsPage: (context) =>
                  ProductDetailsPage(title: context.l10n.productDetailsTitle),
              Routes.kCategories: (context) =>
                  CategoryListPage(title: context.l10n.categoriesTitle),
            }));
  }
}
