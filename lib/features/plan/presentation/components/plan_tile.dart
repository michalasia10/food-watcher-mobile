import 'package:diet_maker/core/app/router.dart';
import 'package:diet_maker/l10n/l10n.dart';
import 'package:flutter/material.dart';

Widget planTile(BuildContext context, String text, List<String> meals) => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 4.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      meals.join("\n"),
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, Routes.kCategories),
                      child: Text(context.l10n.addMeal),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      elevation: 4,
    );
