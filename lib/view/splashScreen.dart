import 'dart:async';
import 'package:flutter/material.dart';
import 'hompages.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
 /*   routes: <String, WidgetBuilder>{
      '/Home': (BuildContext context) => new MainPage()
    };
    Navigator.of(context).pushReplacementNamed('/Home');*/
   /* Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));*/
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainPage()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Image.asset('assets/images/avatar.jpg'),
      ),
    );
  }
}