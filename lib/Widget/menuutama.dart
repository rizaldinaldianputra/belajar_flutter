import 'package:bogor/Widget/Appbar_PrefferedSized).dart';
import 'package:bogor/Widget/AppBar_Gradasi.dart';
import 'package:bogor/Widget/Audio.dart';
import 'package:bogor/Widget/ClipPath.dart';
import 'package:bogor/Widget/GET.dart';
import 'package:bogor/Widget/GET_Banyak.dart';
import 'package:bogor/Widget/Gradient_Opacity.dart';
import 'package:bogor/Widget/POST.dart';
import 'package:bogor/Widget/QR_Code.dart';
import 'package:bogor/Widget/Switch&AnimatedSwitcher.dart';
import 'package:bogor/Widget/Tabbar.dart';
import 'package:bogor/Widget/gestureDectetor_AnimatedContainer.dart';
import 'package:bogor/Widget/draggable.dart';
import 'package:bogor/Widget/card.dart';
import 'package:bogor/Widget/opacity_card.dart';
import 'package:bogor/Widget/sharedrefrenceshard.dart';
import 'package:bogor/Widget/textfield.dart';
import 'package:bogor/Widget/Hero_CliapArt.dart';
import 'package:bogor/Widget/responsive.dart';
import 'package:flutter/material.dart';

import 'AnimatedPaddingWidget.dart';
import 'ProviderSM.dart';

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
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sharedrefrence()));
                    },
                    child: Text('SharedRefrence'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Providerstate()));
                    },
                    child: Text('Providerstate'),
                  ),
                )
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
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Providerstate()),
                      );
                    },
                    child: Text('Provider State'),
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
          color: Color.fromRGBO(0, 0, 100, 0.5),
          border: Border.all(color: Colors.white)),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.comment),
          text: 'Fundamental Flutter 1',
        ),
        Tab(
          icon: Icon(Icons.network_cell),
          text: 'Fundamental Flutter 2',
        ),
      ],
    );

// ISI APLIKASI

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(150),
              child: AppBar(
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          colors: [Colors.purple, Colors.blue],
                          end: Alignment.bottomCenter)),
                ),
                title: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Flutter',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      'Erico Dermawan',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
                backgroundColor: Colors.orange,
                bottom: PreferredSize(
                    preferredSize:
                        Size.fromHeight(myTapBar.preferredSize.height),
                    child: Container(color: Colors.blue, child: myTapBar)),
              ),
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
