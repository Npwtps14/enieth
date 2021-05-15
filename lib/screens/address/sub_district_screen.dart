import 'dart:convert';

import 'package:enie_production/screens/address/district_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'dart:convert' as convert;

import '../register_screen.dart';

class SubDistrictScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(child: SubDistrictListView()),
    ));
  }
}

class GetSubDistrict {
  int id;
  String name;
  String email;
  String phoneNumber;

  GetSubDistrict({this.id, this.name, this.email, this.phoneNumber});

  factory GetSubDistrict.fromJson(Map<String, dynamic> json) {
    return GetSubDistrict(
        id: json['id'],
        name: json['sub_district_name_th'],
        email: json['sub_district_name_en'],
        phoneNumber: json['sub_district_zip_code'] ??= '');
  }
}

// class Cate32 extends StatefulWidget {
//   final cate;
//   final cateId;
//   const Cate32({String this.cate, String this.cateId});
//   @override
//   Cate32State createState() => new Cate32State();
// }
class SubDistrictListView extends StatefulWidget {
  final districtID;

  const SubDistrictListView({int this.districtID});
  SubDistrict createState() => SubDistrict();
}

class SubDistrict extends State<SubDistrictListView> {

  Future<List<GetSubDistrict>> _getSubDistrictList() async {
    var url =
        Uri.parse('https://app1.fantasy.co.th/sub-districts?district_id=${widget.districtID}');
    var response = await http.get(url);
    
    if (response.statusCode == 200) {
      final jsonItems = json.decode(response.body).cast<Map<String, dynamic>>();

      List<GetSubDistrict> usersList = jsonItems.map<GetSubDistrict>((json) {
        return GetSubDistrict.fromJson(json);
      }).toList();

      return usersList;
    } else {
      throw Exception('Failed to load data from internet');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เลือกตำบล/เขต'),
        backgroundColor: HexColor('#36803a'),
      ),
      body: FutureBuilder<List<GetSubDistrict>>(
        future: _getSubDistrictList(),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());

          return ListView(
            children: snapshot.data
                .map(
                  (user) => ListTile(
                    title: Text(
                      user.name,
                      style: GoogleFonts.kanit(),
                    ),
                    onTap: () {
                      var province = new MaterialPageRoute(
                        builder: (BuildContext contex) => Register(),
                      );
                      Navigator.of(context).push(province);
                    },
                    subtitle: Text(
                      'รหัสไปรษณีย์  ' + user.phoneNumber,
                      style: GoogleFonts.kanit(),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: LineIcon(LineIcons.mapMarker),
                    ),
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
