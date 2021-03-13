import 'package:flutter/material.dart';

class Herox extends StatefulWidget {
  @override
  _HeroxState createState() => _HeroxState();
}

class _HeroxState extends State<Herox> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Hero'),
          backgroundColor: Colors.orange,
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Secondpage()),
            );
          },
          child: Hero(
            tag: 'pp',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                width: 200,
                height: 200,
                child: Image(
                  image: AssetImage('assets/anymous.png'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Secondpage extends StatefulWidget {
  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          title: Text('Hero SecondPage'),
          backgroundColor: Colors.orange,
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Herox()),
            );
          },
          child: Center(
            child: Hero(
              tag: 'pp',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.green,
                  width: 400,
                  height: 400,
                  child: Image(
                    image: AssetImage('assets/anymous.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
