import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class User {
  // IDENTIFIKASI DATA
  String id;
  String name;
  String avatar;
  // CONSTRUCTUR FUNCION
  User({this.id, this.name, this.avatar});

// MENGAMBIL DATA JSON
  factory User.createUser(Map<String, dynamic> object) {
    return User(
        id: object['id'].toString(),
        name: object['first_name'] + " " + object['last_name'],
        avatar: object['avatar']);
  }

  // MENGHUBUNGKAN KE API
  static Future<List<User>> getUser(String page) async {
    var apiResult = await http.get(
      Uri.parse("https://reqres.in/api/users?page=" + page),
    );
    var jsonObject = jsonDecode(apiResult.body);
    List<dynamic> listUser = jsonObject['data'];

    List<User> users = [];

    for (int i = 0; i < listUser.length; i++) {
      users.add(User.createUser(listUser[i]));
    }

    return users;
  }
}

class GetBanyak extends StatefulWidget {
  GetBanyak({Key key}) : super(key: key);

  @override
  _GetBanyakState createState() => _GetBanyakState();
}

class _GetBanyakState extends State<GetBanyak> {
  String output = "tidak ada data";
  String output2 = " tidak ada gambar";
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GET_DATA'),
        ),
        body: Container(
          height: 500,
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image(
                  width: 200,
                  height: 200,
                  image: NetworkImage(output2),
                ),
              ),
              Column(
                children: <Widget>[],
              ),
              ElevatedButton(
                child: Text('GET DATA BANYAK'),
                onPressed: () {
                  output = "";
                  User.getUser("1").then((users) {
                    for (var i = 0; i < users.length; i++)
                      output = output + " [ " + users[i].name + "]";
                    {}
                    for (var i = 0; i < users.length; i++)
                      output2 = users[i].avatar;
                    {}
                    setState(() {});
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
