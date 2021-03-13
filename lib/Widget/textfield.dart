import 'package:flutter/material.dart';

class TextFieldx extends StatefulWidget {
  @override
  _TextFieldxState createState() => _TextFieldxState();
}

class _TextFieldxState extends State<TextFieldx> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.adb),
          title: Text('Welcome Dashboard'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(20),
                      child: TextField(
                        obscureText: true,
                        onChanged: (value) {
                          setState(() {});
                        },
                        controller: controller,
                      ),
                    ),
                    Container(
                      // prepifx untuk dalam form
                      // suffix untuk di belakang form
                      margin: EdgeInsets.all(20),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[50],
                            filled: true,
                            icon: Icon(Icons.person),
                            prefixIcon: Icon(Icons.adb),
                            hintText: 'Nama Lengkap',
                            labelText: 'Welcome'),
                        obscureText: false,
                        onChanged: (value) {
                          setState(() {});
                        },
                        controller: controller,
                      ),
                    ),
                  ],
                ),
              ),
              Text(controller.text),
            ],
          ),
        ),
      ),
    );
  }
}
