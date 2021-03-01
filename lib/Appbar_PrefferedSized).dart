import 'package:flutter/material.dart';

class AppbarPreffed extends StatefulWidget {
  @override
  _AppbarPreffedState createState() => _AppbarPreffedState();
}

class _AppbarPreffedState extends State<AppbarPreffed> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
              backgroundColor: Colors.red,
              flexibleSpace: Positioned(
                bottom: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      'Dashboard',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
