import 'package:diet_maker/core/app/router.dart';
import 'package:diet_maker/core/data/api/endpoints.dart';
import 'package:diet_maker/features/home/presentation/components/week_preview_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            WeekPreviewCard(),
          ],
        ),
      ),
    );
  }
}
