import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_app/newPages.dart';

class DialogFragment extends StatefulWidget {
  @override
  _State createState() => new _State();
}

enum Answers{YES, NO}

class _State extends State<DialogFragment> {

  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  Future _askUser() async {
    switch(
    await showDialog(
        context: context,
        child: new SimpleDialog(
          title: new Text("Do you like flutter?"),
          children: <Widget>[
            new SimpleDialogOption(
              child: new Text("Yes"),
              onPressed: (){
                Navigator.pop(context, Answers.YES);
              },
            ),
            new SimpleDialogOption(
              child: new Text("No"),
              onPressed: (){
                Navigator.pop(context, Answers.NO);
              },
            ),
          ],
        )
    )
    ) {
      case Answers.YES:
        _setValue('Yes');
        break;
      case Answers.NO:
        _setValue("No");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new RaisedButton(onPressed: () => _askUser(), child: new Text("Click me"),),
              new Text(_value),
            ],
          ),
        ),
      ),
    );
  }
}