import 'package:flutter/material.dart';

class SwitchAnimated extends StatefulWidget {
  SwitchAnimated({Key key}) : super(key: key);

  @override
  _SwitchAnimatedState createState() => _SwitchAnimatedState();
}

class _SwitchAnimatedState extends State<SwitchAnimated> {
  bool isON = false;
  Widget mWidget = Container(
    margin: EdgeInsets.all(20),
    width: 200,
    height: 200,
    decoration: BoxDecoration(
      color: Colors.red,
      border: Border.all(color: Colors.black, width: 3),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animited Switcher'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AnimatedSwitcher(
                child: mWidget,
                duration: Duration(seconds: 1),
                transitionBuilder: (child, animation) => RotationTransition(
                  turns: animation,
                  child: child,
                ),
              ),
              AnimatedSwitcher(
                child: mWidget,
                duration: Duration(seconds: 1),
                transitionBuilder: (child, animation) => ScaleTransition(
                  scale: animation,
                  child: child,
                ),
              ),
              Switch(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.red[200],
                value: isON,
                onChanged: (newValue) {
                  isON = newValue;
                  setState(() {
                    if (isON) {
                      mWidget = Container(
                        key: ValueKey(1),
                        margin: EdgeInsets.all(20),
                        width: 500,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(color: Colors.black, width: 3),
                        ),
                      );
                    } else {
                      mWidget = Container(
                        key: ValueKey(2),
                        margin: EdgeInsets.all(20),
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.black, width: 3),
                        ),
                      );
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
