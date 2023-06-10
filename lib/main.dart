import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void play(int songNo){
    final player = AudioPlayer();
    player.play(AssetSource("note$songNo.wav"));
  }

  Expanded expanded(int song,Color color){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
        onPressed: () => play(song),
        child: Container(color: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                expanded(1, Colors.red),
                expanded(2, Colors.orange),
                expanded(3, Colors.yellow),
                expanded(4, Colors.green),
                expanded(5, Colors.teal),
                expanded(6, Colors.blue),
                expanded(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
