import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnumber.wav'));
  }

  Expanded buildKey({required Color color, required int soundnumber}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          playsound(soundnumber);
        },
        child: Container(
          margin: EdgeInsets.all(5),
          color: color,
        ),
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
            children: [
              buildKey(color: Colors.red, soundnumber: 1),
              buildKey(color: Colors.yellow, soundnumber: 2),
              buildKey(color: Colors.green, soundnumber: 3),
              buildKey(color: Colors.blue, soundnumber: 4),
              buildKey(color: Colors.teal, soundnumber: 5),
              buildKey(color: Colors.orange, soundnumber: 6),
              buildKey(color: Colors.purple, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
