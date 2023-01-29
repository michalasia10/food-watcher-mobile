import 'package:diet_maker/features/auth/domain/repositories/auth_repository.dart';
import 'package:diet_maker/features/products/domain/entities/product.dart';
import 'package:diet_maker/features/products/domain/repositories/product_repository.dart';
import 'package:diet_maker/features/products/domain/usecases/get_product_details.dart';
import 'package:diet_maker/features/recipes/domain/entities/recipe.dart';
import 'package:diet_maker/features/recipes/domain/repositories/recipe_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockProduct extends Mock implements Product {}
class MockRecipe extends Mock implements Recipe {}

class MockAuthRepository extends Mock implements AuthRepository {}
class MockProductRepository extends Mock implements ProductRepository {}
class MockRecipeRepository extends Mock implements RecipeRepository {}

class MockGetProductDetails extends Mock implements GetProductDetails {}
