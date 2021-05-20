import 'package:enie_production/models/user.dart';
import 'package:enie_production/screens/address/provinces_screen.dart';
import 'package:enie_production/screens/login_screen.dart';
import 'package:enie_production/services/auth_service.dart';
import 'package:enie_production/services/user_provider.dart';
import 'package:enie_production/widgets/login_btn.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'nav_bar.dart';

class Register extends StatefulWidget {
  // final province;
  // final district;
  // final subDistrict;

  // const Register({Key key, this.province = '', this.district = '', this.subDistrict = ''})
  //     : super(key: key);
  final subDistrictName;
  final province;
  final provinceID;
  final phoneNumber;
  final password;
  final confirmPassword;
  final salonName;
  final sloneLastName;
  final salonNickName;
  final salonStoreName;
  final email;
  final address;
  final village;
  final alley;
  final road;
  final countryID;
  final subDistrictId;
  final zipCode;
  final salonImg;
  final districtName;

  const Register(
      {this.subDistrictName ='' ,
      this.province ='',
      this.phoneNumber,
      this.password,
      this.confirmPassword,
      this.salonName,
      this.sloneLastName,
      this.salonNickName,
      this.salonStoreName,
      this.email,
      this.address,
      this.village,
      this.alley,
      this.road,
      this.countryID,
      this.subDistrictId ='',
      this.zipCode ='',
      this.salonImg,
      this.provinceID ='',
      this.districtName =''});
  @override
  _RegisterState createState() => _RegisterState();
}

SharedPreferences prefs;

class _RegisterState extends State<Register> {
  final formKey = new GlobalKey<FormState>();
  static Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

  String _password, _confirmPassword, _username ;
  // TextEditingController _usernameController =

  // var usernameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);
    // String _username = widget.phoneNumber;

    void hideKeyboard(BuildContext context) {
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
        FocusManager.instance.primaryFocus.unfocus();
      }
    }

    usernameController.text = widget.phoneNumber;

    var usernameField = TextFormField(
        validator: (value) => value.isEmpty ? "กรุณากรอกหมายเลขโทรศัพท์" : null,
        onSaved: (value) => _username = value,
        controller: usernameController,
        keyboardType: TextInputType.phone,
        inputFormatters: [
          LengthLimitingTextInputFormatter(10),
        ],
        decoration: InputDecoration(
          hintText: widget.phoneNumber,
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

    // final confirmPassword = TextFormField(
    //   autofocus: false,
    //   validator: (value) => value.isEmpty ? "Your password is required" : null,
    //   onSaved: (value) => _confirmPassword = value,
    //   obscureText: true,
    //   decoration: buildInputDecoration("Confirm password", Icons.lock),
    // );

    final salonsName = TextFormField(
      autofocus: false,
      validator: (val) => val.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      decoration: buildInputDecoration("", Icons.person),
    );
    final salonsLastName = TextFormField(
      autofocus: false,
      validator: (val) => val.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      decoration: buildInputDecoration("", Icons.person),
    );
    final salonsNickName = TextFormField(
      autofocus: false,
      validator: (val) => val.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      decoration: buildInputDecoration("", Icons.person),
    );
    final salonsStoreName = TextFormField(
      autofocus: false,
      validator: (val) => val.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      decoration: buildInputDecoration("", Icons.store),
    );
    final email = TextFormField(
      autofocus: false,
      validator: (val) => val.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      decoration: buildInputDecoration("", Icons.mail),
    );
    final address = TextFormField(
      autofocus: false,
      validator: (val) => val.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      decoration: buildInputDecoration("", Icons.location_city),
    );
    final village = TextFormField(
      autofocus: false,
      validator: (val) => val.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      decoration: buildInputDecoration("", Icons.location_city),
    );
    final alley = TextFormField(
      autofocus: false,
      validator: (val) => val.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      decoration: buildInputDecoration("", Icons.location_city),
    );
    final road = TextFormField(
      autofocus: false,
      validator: (val) => val.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      decoration: buildInputDecoration("", Icons.location_city),
    );
    final country_id = TextFormField(
      autofocus: false,
      validator: (val) => val.isEmpty ? "กรุณากรอกข้อมูลให้ครบถ้วน" : null,
      decoration: buildInputDecoration("", Icons.map),
      initialValue: "ประเทศไทย",
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
          duration: Duration(seconds: 7),
        ).show(context);
      }
      // print(usernameController.text);
    };

    return WillPopScope(
      onWillPop: () {
        return new Future(() => false);
      },
      child: Scaffold(
        backgroundColor: HexColor('#ededed'),
        resizeToAvoidBottomInset: false, //remove warnning pixel
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'สมัครสมาชิก',
            style: GoogleFonts.kanit(),
          ),
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
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: SingleChildScrollView(
            padding: EdgeInsets.all(40),
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
                  // label("ยืนยันรหัสผ่าน"),
                  // SizedBox(height: 10.0),
                  // confirmPassword,
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
                  SizedBox(height: 5.0),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.only(left: 10),
                        horizontalTitleGap: 0,
                        minVerticalPadding: 5,
                        leading: Text('จังหวัด  ',
                            style: GoogleFonts.kanit(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                        title:
                            Text(widget.province, style: GoogleFonts.kanit()),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          var addressPush = new MaterialPageRoute(
                            builder: (BuildContext contex) => ProvincesListView(
                              phoneNumber: usernameController.text,
                              // userName:widget.phoneNumber,
                              password: passwordField,
                              // confirmPassword: confirmPassword,
                              salonName: salonsName,
                              sloneLastName: salonsLastName,
                              salonNickName: salonsNickName,
                              salonStoreName: salonsStoreName,
                              email: email,
                              address: address,
                              village: village,
                              alley: alley,
                              road: road,
                              countryID: country_id,
                              // provinceID:widget.province,
                              // districtID: ,
                              // subDistrictId: ,
                              // zipCode: ,
                              salonImg: salonImg,
                            ),
                          );
                          Navigator.of(context).push(addressPush);
                        },
                      )),
                  SizedBox(height: 5.0),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.only(left: 10),
                        horizontalTitleGap: 0,
                        minVerticalPadding: 5,
                        leading: Text('อำเภอ  ',
                            style: GoogleFonts.kanit(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                        title: Text(widget.districtName,
                            style: GoogleFonts.kanit()),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {},
                      )),
                  SizedBox(height: 5.0),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.only(left: 10),
                        horizontalTitleGap: 0,
                        minVerticalPadding: 5,
                        leading: Text('ตำบล/เขต  ',
                            style: GoogleFonts.kanit(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                        title: Text(widget.subDistrictName,
                            style: GoogleFonts.kanit()),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          // var homeRounte = new MaterialPageRoute(
                          // builder: (BuildContext contex) => Cate5(

                          // ),
                          // );
                          // Navigator.of(context).push(homeRounte);
                        },
                      )),
                  SizedBox(height: 5.0),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.only(left: 10),
                        horizontalTitleGap: 0,
                        minVerticalPadding: 5,
                        leading: Text('รหัสไปรษณีย์  ',
                            style: GoogleFonts.kanit(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                        title: Text(widget.zipCode, style: GoogleFonts.kanit()),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          // var homeRounte = new MaterialPageRoute(
                          // builder: (BuildContext contex) => Cate5(

                          // ),
                          // );
                          // Navigator.of(context).push(homeRounte);
                        },
                      )),
                  SizedBox(height: 10.0),
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
                  SizedBox(height: 360.0),
                ],
              ),
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
