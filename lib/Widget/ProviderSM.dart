import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ApplicationColor with ChangeNotifier {
  bool _isligblue = true;

  bool get islightblue => _isligblue;
  set islightblue(bool value) {
    _isligblue = value;
    notifyListeners();
  }

  Color get color => (_isligblue) ? Colors.lightBlue : Colors.amber;
}

class Providerstate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<ApplicationColor>(
                builder: (context, applicationColor, _) => Text(
                      'Provider State',
                      style: TextStyle(color: applicationColor.color),
                    )),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Consumer<ApplicationColor>(
                  builder: (context, applicationColor, _) => AnimatedContainer(
                    width: 100,
                    height: 100,
                    color: applicationColor.color,
                    margin: EdgeInsets.all(10),
                    duration: Duration(milliseconds: 500),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text('LB'),
                      margin: EdgeInsets.all(10),
                    ),
                    Consumer<ApplicationColor>(
                      builder: (context, applicationColor, _) => Switch(
                          value: applicationColor.islightblue,
                          onChanged: (newValue) {
                            applicationColor.islightblue = newValue;
                          }),
                    ),
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
