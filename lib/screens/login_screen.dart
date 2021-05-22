import 'package:enie_production/models/user.dart';
import 'package:enie_production/screens/nav_bar.dart';
import 'package:enie_production/screens/register_screen.dart';
import 'package:enie_production/services/auth_service.dart';
import 'package:enie_production/services/user_provider.dart';
import 'package:enie_production/widgets/login_btn.dart';
import 'package:enie_production/widgets/validators.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

// class LoginScreen extends StatelessWidget {
// gotoNextActivity(BuildContext context) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => NavBar()),
//   );
// }

// gotoRegister(BuildContext context) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => Register()),
//   );
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login Page'),
//       ),
//       body: Center(
//         child: RaisedButton(
//             child: Text('Login'),
//             color: Colors.green,
//             textColor: Colors.white,
//             onPressed: () {
//               gotoNextActivity(context);
//             }),

//       ),

//     );
//   }
// }

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = new GlobalKey<FormState>();

  String _username, _password;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    AuthProvider auth = Provider.of<AuthProvider>(context);

     var usernameField = TextFormField(
        validator: (value) => value.isEmpty ? "กรุณากรอกหมายเลขโทรศัพท์" :  null,
        keyboardType: TextInputType.phone,
        // controller: usernameController,
        inputFormatters: [
        LengthLimitingTextInputFormatter(10),
      ],
        // initialValue: widget.phoneNumber,
        decoration: InputDecoration(
          // hintText: widget.phoneNumber,
          prefixIcon: Icon(
            Icons.phone,
            color: HexColor('#36803a'),
          ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ));

    final passwordField = TextFormField(
      autofocus: false,
      obscureText: true,
      validator: (value) => value.isEmpty ? "Please enter password" : null,
      onSaved: (value) => _password = value,
      decoration: buildInputDecoration("Confirm password", Icons.lock),
    );

    var loading = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircularProgressIndicator(),
        Text(" Authenticating ... Please wait")
      ],
    );

    final forgotLabel = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(
          padding: EdgeInsets.all(0.0),
          child: Text("Forgot password?",
              style: TextStyle(fontWeight: FontWeight.w300)),
          onPressed: () {
            gotoInApp(context);
//            Navigator.pushReplacementNamed(context, '/reset-password');
          },
        ),
        FlatButton(
          padding: EdgeInsets.only(left: 0.0),
          child: Text("Sign up", style: TextStyle(fontWeight: FontWeight.w300)),
          onPressed: () {
            var registerSuccess = new MaterialPageRoute(
                            builder: (BuildContext contex) => Register(
                             
                            ),
                          );
                          Navigator.of(context).push(registerSuccess);
                      
          },
        ),
      ],
    );

    var doLogin = () {
      final form = formKey.currentState;

      if (form.validate()) {
        form.save();

        final Future<Map<String, dynamic>> successfulMessage =
            auth.login(_username, _password);

        successfulMessage.then((response) {
          if (response['status']) {
            User user = response['user'];
            Provider.of<UserProvider>(context, listen: false).setUser(user);
            // Navigator.pushReplacementNamed(context, '/dashboard');
            gotoInApp(context);
          } else {
            Flushbar(
              title: "Failed Login",
              message: response['message']['message'].toString(),
              duration: Duration(seconds: 3),
            ).show(context);
          }
        });
      } else {
        print("form is invalid");
      }
    };

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false, //remove warnning pixel
        body: Container(
          padding: EdgeInsets.all(40),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Center(
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/enie-89c82.appspot.com/o/logo%2Fenie_logo.png?alt=media&token=ab317673-0576-4557-8f1f-bbf0b8313e56',
                    width: 200,
                    height: 105,
                    fit: BoxFit.fitHeight),
                ),      
                SizedBox(height: 20.0),
                label("Phone Number"),
                SizedBox(height: 10.0),
                usernameField,
                SizedBox(height: 20.0),
                label("Password"),
                SizedBox(height: 10.0),
                passwordField,
                SizedBox(height: 20.0),
                auth.loggedInStatus == Status.Authenticating
                    ? loading
                    : longButtons("Login", doLogin),
                SizedBox(height: 5.0),
                forgotLabel,
              ],
            ),
          ),
        ),
      ),
    );
  }

//incase for bypass login
  void gotoInApp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NavBar()),
    );
  }
}
