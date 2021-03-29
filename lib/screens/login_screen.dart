import 'package:enie_production/screens/nav_bar.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  gotoNextActivity(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NavBar()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Login'),
            color: Colors.green,
            textColor: Colors.white,
            onPressed: () {
              gotoNextActivity(context);
            }),
      ),
    );
  }
}
