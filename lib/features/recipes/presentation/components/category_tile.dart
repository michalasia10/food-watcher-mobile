import 'package:diet_maker/features/recipes/domain/entities/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key? key, required this.category}) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) => Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            Image.network(
              category.pictUrl,
              fit: BoxFit.fill,
            ),
            Text(
              category.name,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 4,
      );
}
