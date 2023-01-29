import 'package:diet_maker/core/utils/date_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlanDetailsPage extends StatelessWidget {
  PlanDetailsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(title)),
        body: SizedBox(
          height: 80,
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) => Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(child: Column(
                  children: [
                    _buildWeekdayText(index),
                  ],
                )),
              ),
            ),
            itemCount: 7,
            scrollDirection: Axis.horizontal,
          ),
        ),
      );

  Text _buildWeekdayText(int index) => Text(
        getTranslatedWeekday(DateTime.now().add(Duration(days: index))) ?? '',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      );
}
