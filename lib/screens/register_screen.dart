import 'package:enie_production/models/user.dart';
import 'package:enie_production/screens/login_screen.dart';
import 'package:enie_production/services/auth_service.dart';
import 'package:enie_production/services/user_provider.dart';
import 'package:enie_production/widgets/login_btn.dart';
import 'package:enie_production/widgets/validators.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

import 'nav_bar.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formKey = new GlobalKey<FormState>();

  String _username, _password, _confirmPassword;

  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);

    final usernameField = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกหมายเลขโทรศัพท์" : null,
      onSaved: (value) => _username = value,
      decoration: buildInputDecoration("", Icons.phone),
    );

    final passwordField = TextFormField(
      autofocus: false,
      obscureText: true,
      validator: (value) => value.isEmpty ? "กรุณากรอกรหัสผ่าน" : null,
      onSaved: (value) => _password = value,
      decoration: buildInputDecoration("", Icons.lock),
    );

    final confirmPassword = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกรหัสผ่านอีกครั้ง" : null,
      onSaved: (value) => _confirmPassword = value,
      obscureText: true,
      decoration: buildInputDecoration("", Icons.lock),
    );
    final salonsName = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      obscureText: true,
      decoration: buildInputDecoration("", Icons.person),
    );
    final salonsLastName = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      obscureText: true,
      decoration: buildInputDecoration("", Icons.person),
    );
    final salonsNickName = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      obscureText: true,
      decoration: buildInputDecoration("", Icons.person),
    );
    final salonsStoreName = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      obscureText: true,
      decoration: buildInputDecoration("", Icons.store),
    );
    final email = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      obscureText: true,
      decoration: buildInputDecoration("", Icons.mail),
    );
    final address = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      obscureText: true,
      decoration: buildInputDecoration("", Icons.location_city),
    );
    final village = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      obscureText: true,
      decoration: buildInputDecoration("", Icons.location_city),
    );
    final alley = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      obscureText: true,
      decoration: buildInputDecoration("", Icons.location_city),
    );
    final road = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      obscureText: true,
      decoration: buildInputDecoration("", Icons.location_city),
    );
    final country_id = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      obscureText: true,
      decoration: buildInputDecoration("", Icons.map),
    );
    final province_id = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      obscureText: true,
      decoration: buildInputDecoration("", Icons.map),
    );
    final district_id = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      obscureText: true,
      decoration: buildInputDecoration("", Icons.map),
    );
    final subdistrict_id = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      obscureText: true,
      decoration: buildInputDecoration("", Icons.map),
    );
    final zipcode = TextFormField(
      autofocus: false,
      validator: (value) => value.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      obscureText: true,
      decoration: buildInputDecoration("", Icons.pin_drop),
    );
    final salonImg = Center(
      child: RaisedButton(
        color: Colors.blueAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {},
        child: Text(
          "เลือกรูปภาพ",
          style: GoogleFonts.kanit(color: Colors.white),
        ),
      ),
    );
    var loading = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircularProgressIndicator(),
        Text(" Registering ... Please wait")
      ],
    );
    final backtologinLabel = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(
          padding: EdgeInsets.all(0.0),
          child: Text("Back to Signin page",
              style: TextStyle(fontWeight: FontWeight.w300)),
          onPressed: () {
            gotoLogin(context);
          },
        ),
      ],
    );
    var doRegister = () {
      final form = formKey.currentState;
      if (form.validate()) {
        form.save();
        auth.register(_username, _password, _confirmPassword).then((response) {
          if (response['status']) {
            User user = response['data'];
            Provider.of<UserProvider>(context, listen: false).setUser(user);
            Navigator.pushReplacementNamed(context, '/dashboard');
          } else {
            Flushbar(
              title: "Registration Failed",
              message: response.toString(),
              duration: Duration(seconds: 10),
            ).show(context);
          }
        });
      } else {
        Flushbar(
          title: "Invalid form",
          message: "Please Complete the form properly",
          duration: Duration(seconds: 10),
        ).show(context);
      }
    };

    return WillPopScope(
      onWillPop: () {
        return new Future(() => false);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false, //remove warnning pixel
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('สมัครสมาชิก'),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: Icon(
              Icons.arrow_back, // add custom icons also
            ),
          ),
          backgroundColor: HexColor('#36803a'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(40.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                label("หมายเลขโทรศัพท์"),
                SizedBox(height: 10.0),
                usernameField,
                SizedBox(height: 20.0),
                label("รหัสผ่าน"),
                SizedBox(height: 10.0),
                passwordField,
                SizedBox(height: 20.0),
                label("ยืนยันรหัสผ่าน"),
                SizedBox(height: 10.0),
                confirmPassword,
                SizedBox(height: 10.0),
                label("ชื่อ"),
                SizedBox(height: 10.0),
                salonsName,
                SizedBox(height: 10.0),
                label("นามสกุล"),
                SizedBox(height: 10.0),
                salonsLastName,
                SizedBox(height: 10.0),
                label("ชื่อเล่น"),
                SizedBox(height: 10.0),
                salonsNickName,
                SizedBox(height: 10.0),
                label("ชื่อร้าน"),
                SizedBox(height: 10.0),
                salonsStoreName,
                SizedBox(height: 10.0),
                label("Email"),
                SizedBox(height: 10.0),
                email,
                SizedBox(height: 10.0),
                label("ที่อยู่"),
                SizedBox(height: 10.0),
                address,
                SizedBox(height: 10.0),
                label("หมู่ที่"),
                SizedBox(height: 10.0),
                village,
                SizedBox(height: 10.0),
                label("ซอย"),
                SizedBox(height: 10.0),
                alley,
                SizedBox(height: 10.0),
                label("ถนน"),
                SizedBox(height: 10.0),
                road,
                SizedBox(height: 10.0),
                label("ประเทศ"),
                SizedBox(height: 10.0),
                country_id,
                SizedBox(height: 10.0),
                label("จังหวัด"),
                SizedBox(height: 10.0),
                province_id,
                SizedBox(height: 10.0),
                label("อำเภอ"),
                SizedBox(height: 10.0),
                district_id,
                SizedBox(height: 10.0),
                label("ตำบล"),
                SizedBox(height: 10.0),
                subdistrict_id,
                SizedBox(height: 10.0),
                label("รหัสไปรษณีย์"),
                SizedBox(height: 10.0),
                zipcode,
                SizedBox(height: 10.0),
                label("รูปหน้าร้าน"),
                SizedBox(height: 10.0),
                salonImg,
                SizedBox(height: 20.0),
                auth.loggedInStatus == Status.Authenticating
                    ? loading
                    : longButtons("Submit", doRegister),
                SizedBox(height: 10.0),
                backtologinLabel,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void gotoLogin(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Login()),
  );
}
