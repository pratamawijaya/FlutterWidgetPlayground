import 'package:flutter/material.dart';
import 'package:flutter_widget_playground/src/util/size_config.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  static const String routeName = "/card";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample Card"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.album,
                      size: 50,
                    ),
                    title: Text("Hello"),
                    subtitle: Text("Subtitle"),
                  )
                ],
              ),
            ),
            Container(
              width: getProportionateScreenWidth(200),
              height: getProportionateScreenHeight(200),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.amber,
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.album,
                        size: 50,
                      ),
                      title: Text("Hello"),
                      subtitle: Text("Subtitle"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
