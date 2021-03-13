import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  @override
  _ResponsiveState createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Responsive'),
        ),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: orintasi(),
              )
            : Row(
                children: orintasi(),
              ),
      ),
    );
  }

  List<Widget> orintasi() {
    return <Widget>[
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
    ];
  }
}
