import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

//XylophoneApp
//https://pub.dev/flutter/packages

/*
Well, Flutter packages are open-source libraries of code that other people have created,
which you can incorporate into your project with minimal effort.
Now in order to browse all of the Flutter packages, head over to pub.dartlang.org/flutter
and these are packages that are especially made to be compatible with Flutter projects.
We're going to search for a package that generates words, and once you hit enter,
you'll notice that there's a lot of packages that might vaguely match that search term,
but what's really helpful is that on this website, you'll see that each of the packages are
shown with a description, but also a score.
*/
class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.red, soundNumber: 1),
                buildKey(color: Colors.green, soundNumber: 2),
                buildKey(color: Colors.blue, soundNumber: 3),
                buildKey(color: Colors.orange, soundNumber: 4),
                buildKey(color: Colors.yellow, soundNumber: 5),
                buildKey(color: Colors.cyan, soundNumber: 6),
                buildKey(color: Colors.teal, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
