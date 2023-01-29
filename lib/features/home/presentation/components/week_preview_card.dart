import 'package:flutter/material.dart';

import '../../../../core/app/router.dart';

class WeekPreviewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        child: Card(
          margin: new EdgeInsets.all(20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.date_range_rounded),
                title: Text('Mój tydzień'),
                onTap: () => Navigator.pushNamed(context, Routes.kPlanPage),
              ),
              ListTile(
                leading: Icon(Icons.food_bank),
                title: Text('Kategorie przepisów'),
                onTap: () => Navigator.pushNamed(context, Routes.kCategories),
              ),
              ListTile(
                leading: Icon(Icons.add_shopping_cart_outlined),
                title: Text('Produkty'),
                onTap: () => Navigator.pushNamed(context, Routes.kProductsPage),
              )
            ],
          ),
        ));
}
