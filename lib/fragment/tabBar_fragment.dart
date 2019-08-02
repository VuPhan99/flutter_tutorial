import 'package:flutter/material.dart';
import 'package:flutter_app/fragment/tab_new_contact.dart';
import 'package:flutter_app/view/addNewContact.dart';

import 'contactList_Fragment.dart';

class TabBarFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blue),
            child: TabBar(
              tabs: <Widget>[
                Tab(
                  text: "New Contact",
                ),
                Tab(
                  text: "List Contact",
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
      TabNewContact(),
      ContactList(),
    ],
  );

}

