import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(Piano());
}

class Piano extends StatelessWidget {
  void playSound(int soundNumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Audio("assets/note$soundNumber.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text('Piano')),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.lightGreenAccent,
                  onPressed: () {
                    playSound(1);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.pink,
                  onPressed: () {
                    playSound(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playSound(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playSound(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playSound(5);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.deepOrange,
                  onPressed: () {
                    playSound(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    playSound(7);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
