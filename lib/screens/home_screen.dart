import 'package:dio/dio.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
main() async {
  var dio = Dio();
  Response response = await dio.get('https://mf-salon-api.herokuapp.com/product');
  print(response.data);
}
class _HomePageState extends State<HomePage> {
  

  @override
  
  Widget build(BuildContext context) {
    // var response = Response();
        return new Scaffold(
          body: new Center(
                    child: new Text(''),
      ),
    );
  }
}
