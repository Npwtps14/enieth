import 'dart:convert';

import 'package:enie_production/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class RetryLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = '';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
// final String phpEndPoint = 'http://192.168.43.171/phpAPI/image.php';
// final String nodeEndPoint = 'http://192.168.43.171:3000/image';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: Container(
                      height: 300,
                      width: double.infinity,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(child: Text('Username หรือ Password ไม่ถูกต้อง กรุณาลองใหม่อีกครั้ง',style: GoogleFonts.kanit())),)
                ),
                RaisedButton(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  onPressed: () {                                                                                                                                                                                                                         
                    var registerSuccess = new MaterialPageRoute(
                      builder: (BuildContext contex) => Login(),
                    );
                    Navigator.of(context).push(registerSuccess);
                  },
                  child: Text(
                    "ตกลง",
                    style: GoogleFonts.kanit(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
