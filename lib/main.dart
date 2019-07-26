import 'package:flutter/material.dart';
import 'hompages.dart';
void main() => runApp(Home(
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fluter App Tutorial",
      debugShowCheckedModeBanner: false,
      home: new MainPage(),

    );
  }
}

