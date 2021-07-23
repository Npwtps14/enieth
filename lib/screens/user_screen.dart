import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'cart_screen.dart';
import 'login_screen.dart';

class UsersPage extends StatefulWidget {
  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  SharedPreferences sharedPreferences;
  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString("accessToken") == null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => Login()),
          (Route<dynamic> route) => false);
    }
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
      child:Container(child:  Card(child: Text("dadd"),
      )

      
      //  RaisedButton(
      //     child: Text('Logout'),
      //     color: Colors.redAccent,
      //     textColor: Colors.white,
      //     onPressed: () {
      //       sharedPreferences.clear();
      //       sharedPreferences.commit();
      //       Navigator.of(context).pushAndRemoveUntil(
      //           MaterialPageRoute(builder: (BuildContext context) => Login()),
      //           (Route<dynamic> route) => false);
      //     }),
         
      )


      
     
    ));
  }
}

void gotoNextActivity(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Login()),
  );
}
