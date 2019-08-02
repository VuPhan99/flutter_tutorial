import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/database/database.dart';
import 'package:flutter_app/modelContact/contact.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<List<Contact>> getContactsFromDB () async{
  var mydatabase = MyDatabase();
  Future<List<Contact>> contacts = mydatabase.getContacts();
  return contacts;
}

class ContactList extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContactListState();
  }

}

class ContactListState extends State<ContactList>{
  final controller_name = new TextEditingController();
  final controller_phone = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        padding: EdgeInsets.all(16),
        child: FutureBuilder<List<Contact>>(
          future: getContactsFromDB(),
          builder: (context, snapshop){
            if(snapshop.data !=null){
              if(snapshop.hasData){
                return ListView.builder(
                  itemCount:  snapshop.data.length,
                  itemBuilder:  (context, index){
                    return new Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(bottom: 6),
                              child: Text(
                                snapshop.data[index].name,
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 16),
                              child: Text(
                                snapshop.data[index].phone,
                                style: TextStyle(color: Colors.blueGrey[600]),
                              ),
                            ),
                          ],),
                        ),

                        // update/ delete button
                        GestureDetector(
                          onTap: (){
                            showDialog(context: context, builder: (_) =>new AlertDialog(contentPadding: EdgeInsets.all(16),
                            content: new Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      TextFormField(
                                        autofocus: true,
                                        decoration: InputDecoration(hintText: '${snapshop.data[index].name}'),
                                        controller: controller_name,
                                      ),
                                      TextFormField(
                                        autofocus: true,
                                        decoration: InputDecoration(hintText: '${snapshop.data[index].phone}'),
                                        controller: controller_phone,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                              actions: <Widget>[
                                new FlatButton(onPressed: (){
                                  Navigator.pop(context);
                                }, child: Text("CANCEL")),
                                new FlatButton(onPressed: (){
                                  var myDatabase = MyDatabase();
                                  Contact contact = new Contact();
                                  contact.id = snapshop.data[index].id; //save id from list view

                                  //if textfield name emty, keep old value
                                  contact.name = controller_name.text !=''?controller_name.text:  snapshop.data[index].name;
                                  contact.phone = controller_phone.text !=''?controller_phone.text:  snapshop.data[index].phone;

                                  //update
                                  myDatabase.updateContact(contact);
                                  Navigator.pop(context);
                                  setState(() {
                                    getContactsFromDB(); //refresh data
                                  });
                                  Fluttertoast.showToast (msg: 'Update success', toastLength: Toast.LENGTH_SHORT);
                                }, child: Text("UPDATE"))
                              ],
                            ));
                          },
                          child: Icon(Icons.update, color: Colors.lightGreen,),
                        ),
                        GestureDetector(
                          onTap: (){
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                // return object of type Dialog
                                return AlertDialog(
                                  title: new Text("Delete"),
                                  content: new Text("Do you want delete?"),
                                  actions: <Widget>[
                                    // usually buttons at the bottom of the dialog
                                    new FlatButton(
                                      child: new Text("NO"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    new FlatButton(
                                      child: new Text("YES"),
                                      onPressed: () {
                                        var mydatabase = MyDatabase();
                                        mydatabase.deleteContact(snapshop.data[index]);
                                        Fluttertoast.showToast (msg: 'Delete success', toastLength: Toast.LENGTH_SHORT);
                                        Navigator.of(context).pop();
                                        //refresh data
                                        setState(() {
                                          getContactsFromDB();
                                        });

                                      },
                                    ),
                                  ],
                                );
                              },
                            );

                          /*  var mydatabase = MyDatabase();
                            mydatabase.deleteContact(snapshop.data[index]);
                            Fluttertoast.showToast (msg: 'Delete success', toastLength: Toast.LENGTH_SHORT);

                            //refresh data
                            setState(() {
                              getContactsFromDB();
                            });*/
                          },
                          child: Icon(Icons.delete, color: Colors.red,),
                        )

                      ],
                    );

                  }

                );
              }

            }

            return new Container();
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Delete"),
          content: new Text("Do you want delete?"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text("YES"),
              onPressed: () {

              },
            ),
          ],
        );
      },
    );
  }


}
