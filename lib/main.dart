import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void soundPlay(int soundNumber) {
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    soundPlay(1);
                  },
                ),
                FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    soundPlay(2);
                  },
                ),
                FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    soundPlay(3);
                  },
                ),
                FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    soundPlay(4);
                  },
                ),
                FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    soundPlay(5);
                  },
                ),
                FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    soundPlay(6);
                  },
                ),
                FlatButton(
                  color: Colors.purple,
                  onPressed: () {
                    soundPlay(7);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
