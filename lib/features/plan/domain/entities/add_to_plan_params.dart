class AddEntryParams {
  AddEntryParams({
    required this.userId,
    required this.mealId,
    required this.recipeId,
    required this.date,
  });

  int userId;
  int mealId;
  int recipeId;
  String date;
}
