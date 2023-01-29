import 'package:diet_maker/features/recipes/domain/entities/recipe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeTile extends StatelessWidget {
  const RecipeTile({Key? key, required this.recipe}) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) => Card(
          child: Center(
        child: Column(
          children: [
            Expanded(child: Image.network(recipe.pictUrl)),
            Text(recipe.name),
          ],
        ),
      ));
}
