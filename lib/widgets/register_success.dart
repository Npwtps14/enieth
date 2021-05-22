import 'package:enie_production/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterSuccess extends StatelessWidget {
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

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Center(
      child: RaisedButton(
        color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      onPressed: ()  {
                        var registerSuccess = new MaterialPageRoute(
                            builder: (BuildContext contex) => Login(
                             
                            ),
                          );
                          Navigator.of(context).push(registerSuccess);
                      
                      },
                      child: Text(
                        "ลงทะเบียนสำเร็จ",
                        style: GoogleFonts.kanit(color: Colors.white),
                      ),
      ),
    );
  }
}
