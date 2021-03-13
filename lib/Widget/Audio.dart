import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Audioplay extends StatefulWidget {
  @override
  _AudioplayState createState() => _AudioplayState();
}

class _AudioplayState extends State<Audioplay> {
  String durasi = "00:00:00";
  AudioPlayer audiopalyer;
  _AudioplayState() {
    audiopalyer = AudioPlayer();
    audiopalyer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audiopalyer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audiopalyer.play(url);
  }

  void playStop() async {
    await audiopalyer.stop();
  }

  void playresume() async {
    await audiopalyer.resume();
  }

  void playpause() async {
    await audiopalyer.pause();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Audio Player'),
        ),
        body: Center(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Start'),
                  onPressed: () {
                    playSound(
                        'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
                  },
                ),
                ElevatedButton(
                  child: Text('Stop'),
                  onPressed: () {
                    playStop();
                  },
                ),
                ElevatedButton(
                  child: Text('Resume'),
                  onPressed: () {
                    playresume();
                  },
                ),
                Text(
                  durasi,
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
