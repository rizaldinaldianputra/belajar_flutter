import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRcode extends StatelessWidget {
  const QRcode({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: QrImage(
            data: 'www.google.com',
            version: QrVersions.auto,
            padding: EdgeInsets.all(20),
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
            size: 500,
            gapless: false,
          ),
        ),
      ),
    );
  }
}
