import 'package:enie_production/screens/category/category_10.dart';
import 'package:enie_production/screens/category/category_11.dart';
import 'package:enie_production/screens/category/category_14.dart';
import 'package:enie_production/screens/category/category_19.dart';
import 'package:enie_production/screens/category/category_20.dart';
import 'package:enie_production/screens/category/category_21.dart';
import 'package:enie_production/screens/category/category_22.dart';
import 'package:enie_production/screens/category/category_24.dart';
import 'package:enie_production/screens/category/category_25.dart';
import 'package:enie_production/screens/category/category_26.dart';
import 'package:enie_production/screens/category/category_27.dart';
import 'package:enie_production/screens/category/category_28.dart';
import 'package:enie_production/screens/category/category_29.dart';
import 'package:enie_production/screens/category/category_32.dart';
import 'package:enie_production/screens/category/category_5.dart';
import 'package:enie_production/screens/category/category_1.dart';
import 'package:enie_production/screens/category/category_1.dart';
import 'package:enie_production/screens/category/category_8.dart';
import 'package:enie_production/screens/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import 'category/category_1.dart';
import 'category/category_4.dart';
import 'category/category_6.dart';
import 'category/category_7.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  //ชื่อประเภท
  final String textCate1 = 'น้ำยายืด/ดัด';
  final String textCate2 = 'เคมี';
  final String textCate3 = 'บำรุง/ทรีทเม้น';
  final String textCate4 = 'แชมพู&ครีมนวด';
  final String textCate5 = 'จัดแต่งทรงผม';
  final String textCate6 = 'สี Fantasy';
  final String textCate7 = 'สี Enie';
  final String textCate8 = 'สีแฟชั่น';
  final String textCate9 = 'สีเคลือบเจล (Magic Color)';
  final String textCate10 = 'ไฮโดรเจน (Hydrogen)';
  final String textCate11 = 'เครื่องใช้ไฟฟ้า (Electical)';
  final String textCate12 = 'แกนดัดผม';
  final String textCate13 = 'อะเซทเซอรี่';
  final String textCate14 = 'กิ๊ฟหนีบผม';
  final String textCate15 = 'หวี-แปรงไดร์';
  final String textCate16 = 'ถ้วยขวด-แปรงเคมี';
  final String textCate17 = 'กระดาษ';
  final String textCate18 = 'เอี๊ยม-ผ้าคลุม';
  final String textCate19 = 'กรรไกร (Scissors)';
  final String textCate20 = 'รถเข็น';

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
          automaticallyImplyLeading: true,
          title: Text(
            'หมวดสินค้า',
            style: GoogleFonts.kanit(),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavBar()),
              );
            },
            child: Icon(
              Icons.arrow_back, // add custom icons also
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: IconButton(
                    icon: LineIcon(LineIcons.shoppingCart),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NavBar()),
                      );
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
            ),
          ],
          backgroundColor: HexColor('#36803a'),
        ),
        body: Container(
            child: ListView(
          children: <Widget>[
            // Padding(padding: EdgeInsets.all(8)),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: Image.network(
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('น้ำยายืด/ดัด', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate1(cate: textCate1),
                );
                Navigator.of(context).push(homeRounte);
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(10),
              horizontalTitleGap: 0,
              minVerticalPadding: 5,
              leading: Image.network(
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('เคมี', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate5(
                    cate: textCate2,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('บำรุง/ทรีทเม้น', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate6(
                    cate: textCate3,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('แชมพู&ครีมนวด', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate8(
                    cate: textCate4,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('จัดแต่งทรง', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate7(
                    cate: textCate5,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('สี Fantasy', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate27(
                    cate: textCate6,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('สี Enie', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate28(
                    cate: textCate7,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('สีแฟชั่น', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate32(
                    cate: textCate8,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title:
                  Text('สีเคลือบเจล (Megic Color)', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate10(
                    cate: textCate9,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('ไฮโดรเจน (Hydrogen)', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate11(
                    cate: textCate10,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('เครื่องใช้ไฟฟ้า (Electrical)',
                  style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate14(
                    cate: textCate11,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('แกนดัดผม', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate19(
                    cate: textCate12,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('อะเซทเซอรี่', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate20(
                    cate: textCate13,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('กิ๊ฟหนีบผม', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate24(
                    cate: textCate14,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('หวี-แปรงไดร์', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate21(
                    cate: textCate15,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('ถ้วยขวด-แปรงเคมี', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate22(
                    cate: textCate16,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('กระดาษ', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate25(
                    cate: textCate17,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('เอี๊ยม-ผ้าคลุม', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate29(
                    cate: textCate18,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('กรรไกร (Scissors)', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate26(
                    cate: textCate19,
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
                  'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/hair-dye.png?resize=300%2C300&ssl=1'),
              title: Text('รถเข็น', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => Cate4(
                    cate: textCate20,
                  ),
                );
                Navigator.of(context).push(homeRounte);
              },
            ),
          ],
        )),
      ),
    );
  }
}
