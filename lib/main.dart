import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildWidget({Color color, int n}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(n);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildWidget(color: Colors.redAccent, n: 1),
              buildWidget(color: Colors.orangeAccent, n: 2),
              buildWidget(color: Colors.yellowAccent, n: 3),
              buildWidget(color: Colors.greenAccent, n: 4),
              buildWidget(color: Colors.tealAccent, n: 5),
              buildWidget(color: Colors.blueAccent, n: 6),
              buildWidget(color: Colors.purpleAccent, n: 7),
            ],
          ),
        ),
      ),
    );
  }
}
