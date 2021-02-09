import 'package:flutter/material.dart';

class Cardx extends StatefulWidget {
  @override
  _CardxState createState() => _CardxState();
}

class _CardxState extends State<Cardx> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    buildcard(Icons.adb, "Androib Box"),
                    buildcard(Icons.account_box, "Account Box"),
                    buildcard(Icons.adb, "Androib Box"),
                    buildcard(Icons.account_box, "Account Box"),
                    buildcard(Icons.adb, "Androib Box"),
                    buildcard(Icons.account_box, "Account Box"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Card buildcard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(margin: EdgeInsets.all(10), child: Icon(iconData)),
        ],
      ),
    );
  }
}
