import 'package:enie_production/models/product.dart';
import 'package:enie_production/screens/home_screen.dart';
import 'package:enie_production/screens/login_screen.dart';
import 'package:enie_production/screens/nav_bar.dart';
import 'package:enie_production/screens/register_screen.dart';
import 'package:enie_production/services/auth_service.dart';
import 'package:enie_production/services/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'helpers/shared_preferance.dart';
import 'models/user.dart';

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
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    Future<User> getUserData() => UserPreferences().getUser();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp(
          title: 'Enie Store',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: FutureBuilder(
              future: getUserData(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                  case ConnectionState.waiting:
                    return CircularProgressIndicator();
                  default:
                    if (snapshot.hasError)
                      return Text('Error: ${snapshot.error}');
                    else if (snapshot.data.token == null)
                      return Login();
                    else
                      UserPreferences().removeUser();
                    return NavBar();
                }
              }),
          routes: {
            // '/dashboard': (context) => NavBar(),
            '/login': (context) => Login(),
            '/register': (context) => Register(),
          }),
    );
  }
}