import 'package:flutter/material.dart';
import 'package:flutter_widget_playground/src/util/size_config.dart';

class AppBarSimple extends StatelessWidget {
  static const String routeName = "/appbar_simple";

  const AppBarSimple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App Bar"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(16),
          vertical: getProportionateScreenHeight(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back),
            Icon(Icons.more_vert),
          ],
        ),
      ),
    );
  }
}
