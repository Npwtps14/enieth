import 'package:enie_production/models/product.dart';
import 'package:enie_production/screens/home_screen.dart';
import 'package:enie_production/screens/login_screen.dart';
import 'package:enie_production/screens/nav_bar.dart';
import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: NavBar());
//   }
// }
// void main() {
//   runApp(MaterialApp(initialRoute: '/loginScreen', //root page
//       routes: {
//         '/loginScreen': (context) => Login(),
//         '/productScreen': (context) => NavBar(),
//       }));
// }
void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}
