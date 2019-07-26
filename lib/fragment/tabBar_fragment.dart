import 'package:flutter/material.dart';

class TabBarFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new DefaultTabController(
      length: 3,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blue),
            child: TabBar(
              tabs: <Widget>[
                Tab(
                  text: "Tab One",
                ),
                Tab(
                  text: "Tab Two",
                ),
                Tab(
                  text: "Tab Three",
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: content
            ),
          )
        ],
      ),
    );
  }
  Widget content = TabBarView(
    children: <Widget>[
      new Container(
        child: new Center(
          child: Text("Tab One"),
        ),
      ),
      new Container(
        child: new Center(
          child: Text("Tab Two"),
        ),
      ), new Container(
        child: new Center(
          child: Text("Tab Three"),
        ),
      )

    ],
  );

}

