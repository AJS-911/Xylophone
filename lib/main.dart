import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  Widget createBar(int barNumber, Color color) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource('note$barNumber.wav'));
            },
            child: Text('$barNumber')),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            createBar(1, Colors.redAccent),
            createBar(2, Colors.orangeAccent),
            createBar(3, Colors.yellowAccent),
            createBar(4, Colors.greenAccent),
            createBar(5, Colors.blueAccent),
            createBar(6, Colors.indigoAccent),
            createBar(7, Colors.purpleAccent),
          ],
        ),
      ),
    );
  }
}
