import 'package:flutter/material.dart';
import 'package:flutter_app/database/database.dart';
import 'package:flutter_app/fragment/contactList_Fragment.dart';
import 'dart:async';

import 'package:flutter_app/modelContact/contact.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddNewContact extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<AddNewContact> {
  Contact contact = new Contact();

  String name, phone;
  final scaffodleKey = new GlobalKey<ScaffoldState>();
  final fromKey = new GlobalKey<FormState>();




  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: scaffodleKey,
      appBar: AppBar(
        title: Text("New Contact"),
      ),
      body: new Padding(padding: EdgeInsets.all(16),
      child: new Form(
        key: fromKey,
        child: new Column(
          children: <Widget>[
            TextFormField(
              textCapitalization: TextCapitalization.sentences,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(labelText: "Name"),
              validator: (val) => val.length == 0? "Enter your name" :null,
              onSaved: (val) => this.name = val,
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: new InputDecoration(labelText: "Phone"),
              validator: (val) => val.length == 0? "Enter your Phone" :null,
              onSaved: (val) => this.phone = val,
            ),
            new Container(
              margin: EdgeInsets.only(top: 10),
              child: new RaisedButton(onPressed: submitContact, child: Text("Add Contact"),),
            )
          ],
        ),
      ),
      )
    );
  }

  void startContactList() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) => new ContactList()));
  }
  void submitContact() {
    if(this.fromKey.currentState.validate()){
      fromKey.currentState.save();
    }else{
      return null;
    }
    var contact = Contact();
    contact.name = name;
    contact.phone = phone;

    var myDatabase = MyDatabase();
    myDatabase.addNewContact(contact);
    Fluttertoast.showToast (msg: "Add success", toastLength: Toast.LENGTH_SHORT);
    /*Navigator.push(context, new MaterialPageRoute(builder: (context) => new ContactList()));*/
    Navigator.pop(context);

/*
    Fluttertoast.showToast (msg: "Add success", toastLength: Toast.LENGTH_SHORT);
*/


  }
}