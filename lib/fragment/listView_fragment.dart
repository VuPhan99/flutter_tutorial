import 'package:flutter/material.dart';

/*
final items = List<String>.generate(100, (i) => "Music $i");
class ListViewFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: listView,
    );
  }
  Widget listView =ListView.builder(
    padding: EdgeInsets.only(top: 4, left: 6, bottom: 4, right: 6 ),
    itemCount: items.length,
    itemBuilder: (context, index) => new ListTile(
      leading: Icon(Icons.audiotrack),
      title: Text('${items[index]}'),)
  );
  Widget list = ListView(
    padding: EdgeInsets.all(8.0),
    children: <Widget>[
      Container(
        height: 60,
        color: Colors.blue[900],
        child: const Center(child: Text('Entry A')),
      ),
      Container(
        height: 60,
        color: Colors.blue[700],
        child: const Center(child: Text('Entry B')),
      ),
      Container(
        height: 60,
        color: Colors.blue[600],
        child: const Center(child: Text('Entry C')),
      ),
      Container(
        height: 60,
        color: Colors.blue[400],
        child: const Center(child: Text('Entry D')),
      ),
      Container(
        height: 60,
        color: Colors.blue[300],
        child: const Center(child: Text('Entry E')),
      ),
      Container(
        height: 60,
        color: Colors.blue[100],
        child: const Center(child: Text('Entry F')),
      ),
    ],
  );

}*/

class ListViewFragment extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return list();
  }
}
class list extends State<ListViewFragment>{
  final items = List<String>.generate(100, (i) => "Music $i");
  Widget appBarTitle = new Text("");
  Icon actionIcon = new Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
   /*   appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: appBarTitle,
        actions: <Widget>[
          IconButton(
            icon: actionIcon,
            tooltip: "Search",
            onPressed: () {
              setState(() {
                if (this.actionIcon.icon == Icons.search) {
                  this.actionIcon = new Icon(Icons.close);
                  this.appBarTitle = new TextField(
                    style: new TextStyle(color: Colors.white,),
                    decoration: new InputDecoration(
                        prefixIcon: new Icon(Icons.search, color: Colors.white),
                        hintText: "Search...",
                        hintStyle: new TextStyle(color: Colors.white)
                    ),
                  );
                }
                else {
                  this.actionIcon = new Icon(Icons.search);
                  this.appBarTitle = new Text("");
                }
              });
            },
          ),
        ],
      ),*/
      body: Container(
        child: ListView.builder(
            padding: EdgeInsets.only(top: 4, left: 6, bottom: 4, right: 6),
            itemCount: items.length,
            itemBuilder: (context, index) =>
            new ListTile(
              leading: Icon(Icons.audiotrack),
              title: Text('${items[index]}'),)
        ),
      ),
      /* ListView.builder(
        padding: EdgeInsets.only(top: 4, left: 6, bottom: 4, right: 6 ),
        itemCount: items.length,
        itemBuilder: (context, index) =>
        new ListTile(
          leading: Icon(Icons.audiotrack),
          title: Text('${items[index]}'),)
    );*/
    );
  }
  
}
