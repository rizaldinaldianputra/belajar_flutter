import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedrefrence extends StatefulWidget {
  Sharedrefrence({Key key}) : super(key: key);

  @override
  _SharedrefrenceState createState() => _SharedrefrenceState();
}

bool isON = false;
TextEditingController controller = TextEditingController(text: "No Name");

void saveData() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  pref.setString("nama", controller.text);
  pref.setBool("ison", isON);
}

Future<String> getName() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getString("nama") ?? "No Name";
}

Future<bool> getOn() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  return pref.getBool("ison") ?? false;
}

class _SharedrefrenceState extends State<Sharedrefrence> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shared Prefencess'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextField(
                controller: controller,
              ),
              Switch(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.red[200],
                value: isON,
                onChanged: (newValue) {
                  isON = newValue;
                  setState(() {});
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      saveData();
                    },
                    child: Text('Save'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      getName().then((s) {
                        controller.text = s;
                        setState(() {});
                      });

                      getOn().then((b) {
                        isON = b;
                        setState(() {});
                      });
                    },
                    child: Text('Load'),
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
