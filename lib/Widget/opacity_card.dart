import 'package:flutter/material.dart';

class Opacityx extends StatefulWidget {
  @override
  _OpacityxState createState() => _OpacityxState();
}

class _OpacityxState extends State<Opacityx> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Dashboard'),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.blue],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
            ),
            Center(
                child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: <Widget>[
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          60 + MediaQuery.of(context).size.height * 0.2,
                          20,
                          20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Column(
                              children: [
                                Text('Sunset The Field OF Sunny',
                                    style: TextStyle(fontSize: 24),
                                    textAlign: TextAlign.center),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Post On',
                                          style: TextStyle(fontSize: 12),
                                          textAlign: TextAlign.center),
                                      Text('June 18, 2018',
                                          style: TextStyle(fontSize: 12),
                                          textAlign: TextAlign.center),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Spacer(
                                      flex: 10,
                                    ),
                                    Icon(Icons.thumb_up,
                                        size: 18, color: Colors.grey),
                                    Spacer(
                                      flex: 1,
                                    ),
                                    Text('Like: 8000',
                                        style: TextStyle(fontSize: 12),
                                        textAlign: TextAlign.center),
                                    Spacer(
                                      flex: 5,
                                    ),
                                    Icon(Icons.comment,
                                        size: 18, color: Colors.grey),
                                    Spacer(
                                      flex: 1,
                                    ),
                                    Text('Like : 8000',
                                        style: TextStyle(fontSize: 12),
                                        textAlign: TextAlign.center),
                                    Spacer(
                                      flex: 10,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
