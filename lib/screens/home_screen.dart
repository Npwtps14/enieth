import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import 'cart_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                    ),
                  ],
                ),
                body: SafeArea(
                    child: Column(children: <Widget>[
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height /
                        2.2, // Also Including Tab-bar height.
//                        child: Chewie(
//                          controller: _chewieController,
//                        ),
                    child: Image.network(
                      "https://i2.wp.com/www.enie.co.th/wp-content/uploads/2021/06/%E0%B8%9C%E0%B8%A5%E0%B8%B4%E0%B8%95%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C-Enie-T3-3size.jpg?resize=300%2C281&ssl=1",
                      fit: BoxFit.cover,
                    ),
                  ),
                  PreferredSize(
                    preferredSize: Size.fromHeight(50.0),
                    child: TabBar(
                      indicatorColor: Colors.purpleAccent,
                      labelColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(
                            'โปรโมชั่น',
                            style: GoogleFonts.kanit(),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'ลดราคาพิเศษ',
                            style: GoogleFonts.kanit(),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'ลดแลกแถม',
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
                          child: Center(
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/enie-89c82.appspot.com/o/img%2FPro-%E0%B8%84%E0%B8%A3%E0%B8%B5%E0%B8%A1%E0%B8%A2%E0%B9%89%E0%B8%AD%E0%B8%A1%E0%B8%9C%E0%B8%A1-ENIE1.jpg?alt=media&token=f2cb7b99-b4ae-4e2c-9338-9867ea993352',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/enie-89c82.appspot.com/o/img%2FPro-%E0%B8%99%E0%B9%89%E0%B8%B3%E0%B8%A2%E0%B8%B2%E0%B8%A2%E0%B8%B7%E0%B8%94%E0%B8%94%E0%B8%B1%E0%B8%94%E0%B8%9C%E0%B8%A1-ENIE1.jpg?alt=media&token=6ee02f9f-c7f4-4fa1-bb97-3769b1c6586e',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/enie-89c82.appspot.com/o/img%2FPro-%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%94%E0%B8%B1%E0%B8%94%E0%B8%94%E0%B8%B4%E0%B8%88%E0%B8%B4%E0%B8%95%E0%B8%AD%E0%B8%A5%E0%B9%81%E0%B8%A5%E0%B8%B0%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%AA%E0%B8%9B%E0%B8%B2%E0%B8%99%E0%B8%B2%E0%B9%82%E0%B8%99-ENIE8.jpg?alt=media&token=61a9e060-33ae-4cc7-b58e-d166fed15671',
                            fit: BoxFit.fill,
                          ),
                        ),
                        // class name
                      ],
                    ),
                  ),
                ])))));
  }
}
