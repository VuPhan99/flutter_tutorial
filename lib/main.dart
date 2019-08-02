import 'package:flutter/material.dart';
import 'package:flutter_app/view/hompages.dart';
import 'package:flutter_app/view/splashScreen.dart';
void main() => runApp(Home(
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fluter App",
      debugShowCheckedModeBanner: false,
      home: new SplashScreen(),

    );
  }
}

