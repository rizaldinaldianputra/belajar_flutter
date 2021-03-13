import 'package:flutter/material.dart';

class Animatedpadding extends StatefulWidget {
  Animatedpadding({Key key}) : super(key: key);

  @override
  _AnimatedpaddingState createState() => _AnimatedpaddingState();
}

class _AnimatedpaddingState extends State<Animatedpadding> {
  @override
  Widget build(BuildContext context) {
    double myPadding = 5;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animatedpadding'),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      padding: EdgeInsets.all(myPadding),
                      duration: const Duration(seconds: 2),
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      padding: EdgeInsets.all(myPadding),
                      duration: const Duration(seconds: 2),
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      padding: EdgeInsets.all(myPadding),
                      duration: const Duration(seconds: 2),
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      padding: EdgeInsets.all(myPadding),
                      duration: const Duration(seconds: 2),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            myPadding = 20;
                          });
                        },
                        child: Container(
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
