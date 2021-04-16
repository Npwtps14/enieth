import 'package:enie_production/screens/cart_screen.dart';
import 'package:enie_production/screens/home_screen.dart';
import 'package:enie_production/screens/category/category_1.dart';
import 'package:enie_production/screens/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import 'category_screen.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  NavBarState createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  final widgetOptions = [
    new HomePage(),
    new CategoryPage(),
    new CartPage(),
    new UsersPage()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return new Future(() => false);
      },
      child: Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   title: Text('Enie store'),
        //   backgroundColor: HexColor('#36803a'),
        // ),
        body: Center(
          child: widgetOptions.elementAt(selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            // ignore: deprecated_member_use
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                // ignore: deprecated_member_use
                icon: Icon(Icons.shopping_bag),
                title: Text('Shop')),
            BottomNavigationBarItem(
                // ignore: deprecated_member_use
                icon: LineIcon(LineIcons.shoppingCart),
                title: Text('Cart')),

            BottomNavigationBarItem(
                // ignore: deprecated_member_use
                icon: LineIcon(LineIcons.userCircle),
                title: Text('Profile')),
          ],
          currentIndex: selectedIndex,
          unselectedItemColor: Colors.black,
          fixedColor: Colors.deepPurple,
          onTap: onItemTapped,
          backgroundColor: Colors.purpleAccent,
        ),
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
