import 'package:enie_production/screens/home_screen.dart';
import 'package:enie_production/screens/promotion.dart';
import 'package:enie_production/screens/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'category_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
    new PromotionPage(),
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
                icon: FaIcon(FontAwesomeIcons.home), title: Text('Home')),
            BottomNavigationBarItem(
                // ignore: deprecated_member_use
                icon: Icon(Icons.shopping_bag),
                title: Text('Shop')),
            BottomNavigationBarItem(
                // ignore: deprecated_member_use
                icon: Icon(Icons.favorite),
                title: Text('Promotion')),

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
