import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

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
                Expanded(
                  child: FlatButton(
                      color: Colors.red,
                      onPressed: () {
                        playSound(1);
                      }),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        playSound(2);
                      }),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        playSound(3);
                      }),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.orange,
                      onPressed: () {
                        playSound(4);
                      }),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.yellow,
                      onPressed: () {
                        playSound(5);
                      }),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.cyan,
                      onPressed: () {
                        playSound(6);
                      }),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.teal,
                      onPressed: () {
                        playSound(7);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
