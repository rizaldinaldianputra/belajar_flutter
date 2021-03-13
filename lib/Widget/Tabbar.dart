import 'package:flutter/material.dart';

class Tabbarx extends StatefulWidget {
  @override
  _TabbarxState createState() => _TabbarxState();
}

class _TabbarxState extends State<Tabbarx> {
  @override
  Widget build(BuildContext context) {
    TabBar myTapBar = TabBar(
      indicator: BoxDecoration(
          color: Colors.green, border: Border.all(color: Colors.white)),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.comment),
          text: 'Text',
        ),
        Tab(
          child: Image(
            image: AssetImage('assets/google.png'),
          ),
        ),
      ],
    );
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: (Scaffold(
          appBar: AppBar(
            title: Text('Tab-bar'),
            backgroundColor: Colors.red,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTapBar.preferredSize.height),
                child: Container(color: Colors.blue, child: myTapBar)),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text('Tab 1'),
              ),
              Center(
                child: Text('Tab 4'),
              )
            ],
          ),
        )),
      ),
    );
  }
}
