import 'package:flutter/material.dart';
import 'package:flutter_widget_playground/src/domain/entity/feature_sample.dart';
import 'package:flutter_widget_playground/src/features/appbar/appbar_simple.dart';
import 'package:flutter_widget_playground/src/features/cards/card_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/';

  List<FeatureSample> listFeature = [
    FeatureSample("Simple Appbar", AppBarSimple.routeName),
    FeatureSample("Simple Card", CardScreen.routeName)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample Widget"),
      ),
      body: ListView.builder(
        itemCount: listFeature.length,
        itemBuilder: (context, index) {
          final item = listFeature[index];
          return ListTile(
            title: Text(item.name),
            onTap: () {
              Navigator.pushNamed(context, item.route);
            },
          );
        },
      ),
    );
  }
}
