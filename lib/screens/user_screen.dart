import 'package:flutter/material.dart';

import 'cart_screen.dart';
import 'login_screen.dart';

class UsersPage extends StatefulWidget {
  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
      child: RaisedButton(
          child: Text('Logout'),
          color: Colors.redAccent,
          textColor: Colors.white,
          onPressed: () {
            gotoNextActivity(context);
          }),
    ));
  }
}

void gotoNextActivity(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Login()),
  );
}
