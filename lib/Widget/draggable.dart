import 'package:flutter/material.dart';

class Draggbles extends StatefulWidget {
  @override
  _DragState createState() => _DragState();
}

class _DragState extends State<Draggbles> {
  Color color1 = Colors.red;
  Color color2 = Colors.blue;
  Color targetwarna;
  bool isAccepted = false;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // data di tarik
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                    // warna material lingkarannya
                    child: Material(
                      color: Colors.pink,
                      shape: StadiumBorder(),
                    ),
                    width: 100,
                    height: 100,
                  ),
                  childWhenDragging: SizedBox(
                    child: Material(
                      color: Colors.black54,
                      shape: StadiumBorder(),
                      elevation: 5,
                    ),
                    width: 100,
                    height: 100,
                  ),
                  feedback: SizedBox(
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 4,
                    ),
                    width: 50,
                    height: 50,
                  ),
                ),

                // DRAGBEL 2
                Draggable<Color>(
                  data: color2,
                  child: SizedBox(
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 5,
                    ),
                    width: 100,
                    height: 100,
                  ),
                  childWhenDragging: SizedBox(
                    child: Material(
                      color: Colors.black54,
                      shape: StadiumBorder(),
                      elevation: 5,
                    ),
                    width: 100,
                    height: 100,
                  ),
                  feedback: SizedBox(
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 4,
                    ),
                    width: 50,
                    height: 50,
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true;
                targetwarna = value;
              },
              builder: (context, candidates, rejected) {
                return (isAccepted)
                    ? SizedBox(
                        child: Material(
                          color: targetwarna,
                          shape: StadiumBorder(),
                        ),
                        width: 100,
                        height: 100,
                      )
                    : SizedBox(
                        child: Material(
                          color: Colors.green,
                          shape: StadiumBorder(),
                          elevation: 5,
                        ),
                        width: 100,
                        height: 100,
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
