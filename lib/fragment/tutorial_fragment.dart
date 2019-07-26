import 'package:flutter/material.dart';

class TutorialFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: content,
    );
  }

  Widget content = Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Expanded(
            child: Image.asset('assets/images/logoCowell.jpg'),
          )
        ],
      ),
      Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 18, left: 12, right: 12),
              child: Text('bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla '),
            ),
          )
        ],
      )
    ],
  );

}

