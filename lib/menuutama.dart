import 'package:bogor/Appbar_PrefferedSized).dart';
import 'package:bogor/AppBar_Gradasi.dart';
import 'package:bogor/Audio.dart';
import 'package:bogor/ClipPath.dart';
import 'package:bogor/GET.dart';
import 'package:bogor/GET_Banyak.dart';
import 'package:bogor/Gradient_Opacity.dart';
import 'package:bogor/POST.dart';
import 'package:bogor/QR_Code.dart';
import 'package:bogor/Switch&AnimatedSwitcher.dart';
import 'package:bogor/Tabbar.dart';
import 'package:bogor/gestureDectetor_AnimatedContainer.dart';
import 'package:bogor/draggable.dart';
import 'package:bogor/card.dart';
import 'package:bogor/opacity_card.dart';
import 'package:bogor/textfield.dart';
import 'package:bogor/Hero_CliapArt.dart';
import 'package:bogor/responsive.dart';
import 'package:flutter/material.dart';

import 'AnimatedPaddingWidget.dart';

class MenuUtama extends StatefulWidget {
  @override
  _MenuUtamaState createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama> {
  @override
  Widget build(BuildContext context) {
    Container menu1 = Container(
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
                        MaterialPageRoute(builder: (context) => TextFieldx()),
                      );
                    },
                    child: Text('TextField'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GradientOpacity()),
                      );
                    },
                    child: Text('GradientOpacity'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Audioplay()),
                      );
                    },
                    child: Text('Audio Player'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Clippath()),
                      );
                    },
                    child: Text('Clipath'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gesture()),
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
                        MaterialPageRoute(builder: (context) => Tabbarx()),
                      );
                    },
                    child: Text('TabBar'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QRcode()),
                      );
                    },
                    child: Text('Barcode QR-Code'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Herox()),
                      );
                    },
                    child: Text('Hero & Clipart'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AppBarx()),
                      );
                    },
                    child: Text('Gradient Appbar'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AppbarPreffed()),
                      );
                    },
                    child: Text('Appbar_PrefferedSized)'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Draggbles()),
                      );
                    },
                    child: Text('Draggable'),
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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Opacityx()));
                    },
                    child: Text('Card+Gradasi'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Responsive()));
                    },
                    child: Text('Media Query'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SwitchAnimated()));
                    },
                    child: Text('SwitchAnimated'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Animatedpadding()));
                    },
                    child: Text('Animatedpadding'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Container restfull = Container(
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
                        MaterialPageRoute(builder: (context) => PostDart()),
                      );
                    },
                    child: Text('POST '),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GetDart()),
                      );
                    },
                    child: Text('GET '),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GetBanyak()),
                      );
                    },
                    child: Text('GET DATA BANYAK'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    TabBar myTapBar = TabBar(
      indicator: BoxDecoration(
          color: Colors.green, border: Border.all(color: Colors.white)),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.comment),
          text: 'Menu 1',
        ),
        Tab(
          icon: Icon(Icons.network_cell),
          text: 'RestFull',
        ),
      ],
    );

// ISI APLIKASI

    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [Colors.purple, Colors.blue],
                    end: Alignment.bottomCenter)),
          ),
          title: Text('Dashboard'),
          backgroundColor: Colors.orange,
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTapBar.preferredSize.height),
              child: Container(color: Colors.blue, child: myTapBar)),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [Colors.purple, Colors.blue],
                  end: Alignment.bottomCenter)),
          child: TabBarView(
            children: <Widget>[
              Center(
                child: menu1,
              ),
              Center(
                child: restfull,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
