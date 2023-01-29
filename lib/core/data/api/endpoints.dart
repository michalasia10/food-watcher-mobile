class Endpoints {
  static const kCategory = 'category';
  static const kProduct = 'product';
  static const kRecipe = 'recipe';
  static const kRecipes = 'recipes';

  static String recipesFromCategory(int id) => "$kCategory/$id/$kRecipes";
}
