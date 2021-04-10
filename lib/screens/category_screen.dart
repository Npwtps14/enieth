import 'package:dio/dio.dart';
import 'package:enie_production/models/product.dart';
import 'package:enie_production/screens/login_screen.dart';
import 'package:enie_production/screens/products_screen.dart';
import 'package:enie_production/screens/products_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'products_screen.dart';
import 'products_screen.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  //ชื่อประเภท
  final String textCate = 'น้ำยายืด/ดัด';
  final String textCate2 = 'เคมี';
  final String textCate3 = 'บำรุง/ทรีทเม้น';

  //ค่า categoryId จาก api
  final String categoryID1 = '1';
  final categoryID4 = 4;
  final categoryID5 = 5;
  final categoryID6 = 1;
  final categoryID7 = 1;
  final categoryID8 = 1;
  final categoryID10 = 1;
  final categoryID11 = 1;
  final categoryID14 = 1;
  final categoryID19 = 1;
  final categoryID20 = 1;
  final categoryID21 = 1;
  final categoryID22 = 1;

  @override
  Widget build(BuildContext context) {
    // var response = Response();
    return WillPopScope(
      onWillPop: () {
        return new Future(() => false);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false, //remove warnning pixel
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('หมวดสินค้า'),
          backgroundColor: HexColor('#36803a'),
        ),
        body: Container(
            child: ListView(
          children: <Widget>[
            // Padding(padding: EdgeInsets.all(8)),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: Image.network(
                  'https://salon.fantasy.co.th/images/products/500/20201217151121-3ADdArjHmO.png'),
              title: Text('น้ำยายืด/ดัด'),
              trailing: Icon(Icons.keyboard_arrow_right),
             onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
                    cate: textCate,
                    cateId: categoryID1
                  ),
                );
                Navigator.of(context).push(homeRounte);
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              horizontalTitleGap: 0,
              minVerticalPadding: 5,
              leading: Image.network(
                  'https://salon.fantasy.co.th/images/products/500/20200604141350-Pmjg5e99Qe.png'),
              title: Text('เคมี'),
              trailing: Icon(Icons.keyboard_arrow_right),
              // onTap: () {
              //   var homeRounte = new MaterialPageRoute(
              //     builder: (BuildContext contex) => ProductsPage(
              //       cate: textCate2.toString(),
              //     ),
              //   );
              //   Navigator.of(context).push(homeRounte);
              // },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              horizontalTitleGap: 0,
              minVerticalPadding: 5,
              leading: Image.network(
                  'https://salon.fantasy.co.th/images/products/500/20201223154409-1LNthwRY0M.png'),
              title: Text('บำรุง/ทรีทเม้น'),
              trailing: Icon(Icons.keyboard_arrow_right),
              // onTap: () {
              //   var homeRounte = new MaterialPageRoute(
              //     builder: (BuildContext contex) => ProductsPage(
              //       cate: textCate3.toString(),
              //     ),
              //   );
              //   Navigator.of(context).push(homeRounte);
              // },
            ),
          ],
        )),
      ),
    );
  }

  ProductsPageState({String cate, String cateId}) {}
}
