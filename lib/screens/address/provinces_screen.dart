import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
  
  
  class ProvincesScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          body: Center(
          child: ProvincesListView()
          ),
      ));
    }
  }

  class GetUsers {
  int id;
  String name;
  String email;
  String phoneNumber;

  GetUsers({
    this.id,
    this.name,
    this.email,
    this.phoneNumber
  });

  factory GetUsers.fromJson(Map<String, dynamic> json) {
    return GetUsers(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phoneNumber: json['phone']
    );
  }
}

class ProvincesListView extends StatefulWidget {
  Provinces createState() => Provinces();
}

class Provinces extends State {

  Future<List<GetUsers>> fetchJSONData() async {

    var url = Uri.parse('https://app1.fantasy.co.th/province');
        var response = await http.get(url, headers: {});


    if (response.statusCode == 200) {

      final jsonItems = json.decode(response.body).cast<Map<String, dynamic>>();

      List<GetUsers> usersList = jsonItems.map<GetUsers>((json) {
        return GetUsers.fromJson(json);
      }).toList();

      return usersList;
    
    } else {
      throw Exception('Failed to load data from internet');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JSON ListView in Flutter'),
      ),
      body: FutureBuilder<List<GetUsers>>(
        future: fetchJSONData(),
        builder: (context, snapshot) {

          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());

          return ListView(
            children: snapshot.data
            .map((user) => ListTile(
                  title: Text(user.name),
                  onTap: (){ print(user.name); },
                  subtitle: Text(user.phoneNumber),
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text(user.name[0],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    )),
                  ),
                ),
              )
            .toList(),
          );
        },
      ),
    );
  }
}