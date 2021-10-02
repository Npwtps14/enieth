import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import 'cart_screen.dart';

class PromotionPage extends StatefulWidget {
  @override
  _PromotionPageState createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

//        theme: ThemeData.light().copyWith(
//          platform: _platform ?? Theme.of(context).platform,
//        ),
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: HexColor('#36803a'),
                  title: Text(''),
                  leading: GestureDetector(),
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
                                  MaterialPageRoute(
                                      builder: (context) => CartPage()),
                                );
                              }),
                        )),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                    ),
                  ],
                ),
                body: SafeArea(
                    child: Column(children: <Widget>[
                  Container(
                    color: Colors.greenAccent,
                    height: MediaQuery.of(context).size.height /
                        2.2, // Also Including Tab-bar height.
//                        child: Chewie(
//                          controller: _chewieController,
//                        ),
                    child: Image.network(
                      "https://i0.wp.com/www.enie.co.th/wp-content/uploads/2021/04/%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B9%80%E0%B8%AA%E0%B8%A3%E0%B8%B4%E0%B8%A1%E0%B8%AA%E0%B8%A7%E0%B8%A2%E0%B8%A2%E0%B8%B8%E0%B8%84%E0%B9%82%E0%B8%84%E0%B8%A7%E0%B8%B4%E0%B8%94.jpg?w=630&ssl=1",
                      fit: BoxFit.fill,
                    ),
                  ),
                  PreferredSize(
                    preferredSize: Size.fromHeight(50.0),
                    child: TabBar(
                      labelColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(
                            'ข่าวสาร',
                            style: GoogleFonts.kanit(),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'เกร็ดความรู้',
                            style: GoogleFonts.kanit(),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'กิจกรรม',
                            style: GoogleFonts.kanit(),
                          ),
                        )
                      ], // list of tabs
                    ),
                  ),
                  //TabBarView(children: [ImageList(),])
                  Expanded(
                    child: TabBarView(
                      children: [
                        Container(
                            child: Image.network(
                            'https://i0.wp.com/www.enie.co.th/wp-content/uploads/2021/07/Pro7.7-ENIE.png?w=750&ssl=1',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                           child: Image.network(
                            'https://i2.wp.com/www.enie.co.th/wp-content/uploads/2021/07/%E0%B8%AD%E0%B8%B2%E0%B8%88%E0%B8%B2%E0%B8%A3%E0%B9%8C%E0%B8%A2%E0%B8%97%E0%B8%B5%E0%B8%99%E0%B9%88%E0%B8%B2-ENIE-5.jpg?w=1280&ssl=1',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          child: Image.network(
                            'https://i1.wp.com/www.enie.co.th/wp-content/uploads/2021/09/%E0%B8%AA%E0%B9%88%E0%B8%87%E0%B8%A1%E0%B8%AD%E0%B8%9A%E0%B8%81%E0%B8%B3%E0%B8%A5%E0%B8%B1%E0%B8%87%E0%B9%83%E0%B8%88%E0%B9%83%E0%B8%AB%E0%B9%89%E0%B9%80%E0%B8%9E%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%99%E0%B8%8A%E0%B9%88%E0%B8%B2%E0%B8%87%E0%B8%84%E0%B8%A3%E0%B8%B1%E0%B9%89%E0%B8%87%E0%B8%97%E0%B8%B5%E0%B9%885-ENIE2.png?w=944&ssl=1',
                            fit: BoxFit.cover,
                          ),
                        ) // class name
                      ],
                    ),
                  ),
                ])))));
  }
}
