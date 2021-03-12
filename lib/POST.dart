import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class PostDart extends StatefulWidget {
  @override
  _PostDartState createState() => _PostDartState();
}

class PostResult {
  String id;
  String name;
  String job;
  String created;

  PostResult({this.id, this.name, this.job, this.created});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
        id: object['id'],
        name: object['name'],
        job: object['job'],
        created: object['createdAt']);
  }

  static Future<PostResult> koneksiAPI(String name, String job) async {
    var apiResult = await http.post(Uri.parse("https://reqres.in/api/users"),
        body: {"name": name, "job": job});

    var jsonObject = jsonDecode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}

class _PostDartState extends State<PostDart> {
  PostResult postResult;
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
                  Text((postResult != null)
                      ? postResult.id +
                          " " +
                          postResult.name +
                          " " +
                          postResult.job +
                          " " +
                          postResult.created
                      : "Tidakada"),
                  ElevatedButton(
                    onPressed: () {
                      PostResult.koneksiAPI("badru", "programer").then((value) {
                        postResult = value;
                        setState(() {
                          PostResult();
                        });
                      });
                    },
                    child: Text('Get POST'),
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
