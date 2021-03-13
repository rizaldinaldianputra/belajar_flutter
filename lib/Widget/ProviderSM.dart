import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier {
  bool _isligblue = true;

  bool get islightblue => _isligblue;
  set islightblue(bool value) {
    _isligblue = value;
    notifyListeners();
  }

  Color get color => (_isligblue) ? Colors.lightBlue : Colors.amber;
}

bool isON = false;

class Providerstate extends StatelessWidget {
  const Providerstate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Provider State'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              AnimatedContainer(
                width: 100,
                height: 100,
                color: Colors.lightBlue,
                margin: EdgeInsets.all(10),
                duration: Duration(milliseconds: 500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text('LB'),
                    margin: EdgeInsets.all(10),
                  ),
                  Switch(
                      value: isON,
                      onChanged: (newValue) {
                        isON = newValue;
                      }),
                  Container(
                    child: Text('Red'),
                    margin: EdgeInsets.all(10),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ApplicationColors with ChangeNotifier {
  bool _isLightBlue = true;

  set islighblue(bool value) {
    notifyListeners();
  }

  Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;
}
