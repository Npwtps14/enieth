import 'package:dio/dio.dart';
import 'package:enie_production/screens/login_screen.dart';
import 'package:enie_production/screens/products_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // var response = Response();
   return new Scaffold(
      body: new Center(
        child: new Text("Home screen"),
      ),
    );
  }
}
