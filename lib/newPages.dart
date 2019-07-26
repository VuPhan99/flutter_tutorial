import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_app/newPages.dart';

class NewPage extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<NewPage> {


  bool _value1 = false;
  bool _value2 = false;
  void _value1Changed(bool value) => setState(() => _value1 = value);
  void _value2Changed(bool value) => setState(() => _value2 = value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("New Page"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new CheckboxListTile(
                value: _value2,
                onChanged: _value2Changed,
                title: new Text('One'),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.red,
              ),
              new CheckboxListTile(
                value: _value1,
                onChanged: _value1Changed,
                title: new Text('Two'),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}