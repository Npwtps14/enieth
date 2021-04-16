import 'package:enie_production/screens/category/category_5.dart';
import 'package:enie_production/screens/category/category_1.dart';
import 'package:enie_production/screens/category/category_1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'category/category_1.dart';
import 'category/category_1.dart';
import 'category/category_4.dart';

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

  //ค่า categoryId จาก api
  // final String categoryID1 = '1';
  // final categoryID4 = 4;
  // final categoryID5 = 5;
  // final categoryID6 = 1;
  // final categoryID7 = 1;
  // final categoryID8 = 1;
  // final categoryID10 = 1;
  // final categoryID11 = 1;
  // final categoryID14 = 1;
  // final categoryID19 = 1;
  // final categoryID20 = 1;
  // final categoryID21 = 1;
  // final categoryID22 = 1;

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
          title: Text('หมวดสินค้า', style: GoogleFonts.kanit()),
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
              title: Text('น้ำยายืด/ดัด', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) =>
                      Cate1(
                        cate: textCate1),
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
                  'https://salon.fantasy.co.th/images/products/500/20201223154409-1LNthwRY0M.png'),
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
                  'https://salon.fantasy.co.th/images/products/500/20201226165139-01LbQZTxKa.png'),
              title: Text('แชมพู&ครีมนวด', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20201222094530-7lvCCUYufz.png'),
              title: Text('จัดแต่งทรง', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20201219171329-H6EYQJ2fkl.png'),
              title: Text('สี Fantasy', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20201218154812-HSg5VFKmry.png'),
              title: Text('สี Enie', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20201221113828-IAkkNN9Ah2.png'),
              title: Text('สีแฟชั่น', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20201223113713-n5LPLifq1k.png'),
              title:
                  Text('สีเคลือบเจล (Megic Color)', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20210116094655-2SXY86BXwJ.png'),
              title: Text('ไฮโดรเจน (Hydrogen)', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20200810101957-BKgENXEZMg.png'),
              title: Text('เครื่องใช้ไฟฟ้า (Electrical)',
                  style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20210108113500-EOIhT6o26P.png'),
              title: Text('แกนดัดผม', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20210216140406-4MZYVSzDJ9.png'),
              title: Text('อะเซทเซอรี่', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20201226151113-UqGAJupRBP.png'),
              title: Text('กิ๊ฟหนีบผม', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20201123132206-P0tf0qXlwV.png'),
              title: Text('หวี-แปรงไดร์', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20200622141147-MHVJ2jpOeX.png'),
              title: Text('ถ้วยขวด-แปรงเคมี', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20200722115019-dcIqUJtMb3.png'),
              title: Text('กระดาษ', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20201219151959-xMFRuo98Jn.png'),
              title: Text('เอี๊ยม-ผ้าคลุม', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20200811140637-1vaO8owQfA.png'),
              title: Text('กรรไกร (Scissors)', style: GoogleFonts.kanit()),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                var homeRounte = new MaterialPageRoute(
                  builder: (BuildContext contex) => ProductsPage(
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
                  'https://salon.fantasy.co.th/images/products/500/20200623110718-tTnByd3tB2.png'),
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
