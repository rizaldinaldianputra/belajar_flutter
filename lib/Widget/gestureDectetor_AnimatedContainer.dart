import 'dart:math';
import 'package:flutter/material.dart';

class Gesture extends StatefulWidget {
  @override
  _GestureState createState() => _GestureState();
}

class _GestureState extends State<Gesture> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: 50.0 + random.nextInt(101),
              height: 50.0 + random.nextInt(101),
              color: Color.fromARGB(
                255,
                random.nextInt(255),
                random.nextInt(255),
                random.nextInt(255),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
