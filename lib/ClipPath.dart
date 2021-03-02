import 'package:flutter/material.dart';

class Clippath extends StatefulWidget {
  @override
  _ClippathState createState() => _ClippathState();
}

class _ClippathState extends State<Clippath> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clippath'),
        ),
        body: Center(
          child: Image(
            width: 500,
            image: AssetImage('assets/anymous.png'),
          ),
        ),
      ),
    );
  }
}
