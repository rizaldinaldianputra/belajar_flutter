import 'package:flutter/material.dart';

class AppBarx extends StatefulWidget {
  @override
  _AppBarxState createState() => _AppBarxState();
}

class _AppBarxState extends State<AppBarx> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.adb,
            color: Colors.white,
          ),
          title: Text('Dashboard'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff0096ff), Color(0xff0016f2)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
            ),
          ),
        ),
        body: Container(
          child: Image(
            image: AssetImage('assets/bg.png'),
          ),
        ),
      ),
    );
  }
}
