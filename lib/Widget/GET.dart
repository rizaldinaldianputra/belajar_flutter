import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class GetDart extends StatefulWidget {
  @override
  _GetDartState createState() => _GetDartState();
}

class User {
  String id;
  String name;
  String avatar;
  User({this.id, this.name, this.avatar});

  factory User.createUser(Map<String, dynamic> object) {
    return User(
        id: object['id'].toString(),
        name: object['first_name'] + " " + object['last_name'],
        avatar: object['avatar']);
  }

  static Future<User> connetToAPI(String id) async {
    var apiResult = await http.get(
      Uri.parse("https://reqres.in/api/users/" + id),
    );

    var jsonObject = jsonDecode(apiResult.body);
    var userData = jsonObject['data'];
    return User.createUser(userData);
  }
}

class _GetDartState extends State<GetDart> {
  User user;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('POST'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: 500,
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text((user != null)
                      ? user.id + " " + user.name + " "
                      : "Tidakada"),
                  Container(
                    width: 250,
                    height: 250,
                    child: Image(
                      image: NetworkImage(
                          (user != null) ? user.avatar : "tidak ada gambar"),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      User.connetToAPI("1").then((value) {
                        user = value;
                        setState(() {});
                      });
                    },
                    child: Text('GET'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
