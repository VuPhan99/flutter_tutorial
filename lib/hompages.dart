import 'package:flutter/material.dart';
import 'package:flutter_app/fragment/girdView_fragment.dart';
import 'package:flutter_app/fragment/listView_fragment.dart';
import 'package:flutter_app/fragment/tutorial_fragment.dart';
import 'package:flutter_app/fragment/tabBar_fragment.dart';
import 'package:flutter_app/fragment/dialog_fragment.dart';
import 'package:flutter_app/newPages.dart';


class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}
class MainPagesState extends State<MainPage> {
  Widget appBarTitle2 = new Text("");
  Icon actionIcon = new Icon(Icons.search);

  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new TutorialFragment();
      case 1:
        return new ListViewFragment();
      case 2:
        return new GirdViewFragment();
      case 3:
        return new TabBarFragment();
      case 4:
        return new DialogFragment();
      default:
        return new Text("Error");
    }
  }
  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget appBarTitle = new Text(widget.drawerItems[_selectedDrawerIndex].title);

    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: appBarTitle,
//        actions: <Widget>[
//          IconButton(
//            icon: actionIcon,
//            tooltip: "Search",
//            onPressed: (){
//              setState(() {
//                if(this.actionIcon.icon == Icons.search){
//                  this.actionIcon = new Icon(Icons.close);
//                  this.appBarTitle2= new TextField(
//                    style: new TextStyle(color: Colors.white,),
//                    decoration: new InputDecoration(
//                        prefixIcon: new Icon(Icons.search,color: Colors.white),
//                        hintText: "Search...",
//                        hintStyle: new TextStyle(color: Colors.white)
//                    ),
//                  );
//                }
//                else{
//                  this.actionIcon = new Icon(Icons.search);
//                  this.appBarTitle2 = new Text("");
//                }
//              });
//            },
//          ),
//        ],
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Tutorial Flutter" , style: TextStyle(fontSize: 18),), accountEmail: null),
            new Column(children: drawerOptions)
          ],
        ),
      ),

      body: _getDrawerItemWidget(_selectedDrawerIndex),
      /*body: content,*/
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context) => NewPage  () ));
        },
        child: Icon(Icons.create_new_folder),),

      );
  }

}
class MainPage extends StatefulWidget{
  final drawerItems = [
    new DrawerItem("Tutorial", Icons.home),
    new DrawerItem("List View", Icons.view_list),
    new DrawerItem("Gird View", Icons.grid_on),
    new DrawerItem("Tabbed Bar", Icons.tab),
    new DrawerItem("Dialog", Icons.directions)
  ];

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainPagesState();
  }

}