import 'package:flutter/material.dart';

class GradientOpacity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gradasi Opacity'),
        ),
        body: Center(
            child: ShaderMask(
          shaderCallback: (context) {
            return LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [Colors.red, Colors.transparent],
                    end: Alignment.bottomCenter)
                .createShader(
                    Rect.fromLTRB(0, 0, context.width, context.height));
          },
          blendMode: BlendMode.dstIn,
          child: Image(
            width: 500,
            image: AssetImage('assets/anymous.png'),
          ),
        )),
      ),
    );
  }
}
