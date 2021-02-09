import 'package:bogor/appbarx.dart';
import 'package:bogor/gestureDectetor_AnimatedContainer.dart';
import 'package:bogor/draggable.dart';
import 'package:bogor/card.dart';

import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';

class MenuUtama extends StatefulWidget {
  @override
  _MenuUtamaState createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Menu Utama'),
          ),
          body: Container(
            child: CustomScrollView(
              primary: false,
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.all(20),
                  sliver: SliverGrid.count(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Gesture()),
                            );
                          },
                          child: Text('Gesture Detector'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AppBarx()),
                            );
                          },
                          child: Text('Appbar'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Draggbles()),
                            );
                          },
                          child: Text('Appbar'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Cardx()),
                            );
                          },
                          child: Text('Card'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('-'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('-'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
