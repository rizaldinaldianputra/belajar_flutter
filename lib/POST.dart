import 'package:flutter/material.dart';

class PostDart extends StatefulWidget {
  @override
  _PostDartState createState() => _PostDartState();
}

class _PostDartState extends State<PostDart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('POST'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 500,
              height: 500,
              child: Row(
                children: [
                  Text('Hasil text'),
                  ElevatedButton(
                    onPressed: () {},
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
