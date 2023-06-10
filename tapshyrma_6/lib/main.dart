import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const PianoApp(),
    );
  }
}class PianoApp extends StatefulWidget {
  const PianoApp({super.key});

  @override
  State<PianoApp> createState() => _PianoAppState();
}

class _PianoAppState extends State<PianoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Piano App")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              GestureDetector(
            onTap: () {
              AudioPlayer().play(
                AssetSource('do.mp3')
                );
            },
            child: Container(
              height: 120,
              width: 50,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 5,),
          GestureDetector(
            onTap: () {
              AudioPlayer().play(AssetSource('re.mp3'));
            },
            child: Container(
              height: 120,
              width: 50,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 5,),
          GestureDetector(
            onTap: () {
              AudioPlayer().play(AssetSource('mi.mp3'));
            },
            child: Container(
              height: 120,
              width: 50,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 5,),
          GestureDetector(
            onTap: () {
              AudioPlayer().play(AssetSource('fa.mp3'));
            },
            child: Container(
              height: 120,
              width: 50,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 5,),
          GestureDetector(
            onTap: () {
              AudioPlayer().play(AssetSource('sol.mp3'));
            },
            child: Container(
              height: 120,
              width: 50,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 5,),
          GestureDetector(
            onTap: () {
              AudioPlayer().play(AssetSource('lya.mp3'));
            },
            child: Container(
              height: 120,
              width: 50,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 5,),
          GestureDetector(
            onTap: () {
              AudioPlayer().play(AssetSource('si.mp3'));
            },
            child: Container(
              height: 120,
              width: 50,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 5,),
          GestureDetector(
            onTap: () {
              AudioPlayer().play(AssetSource('do.mp3'));
            },
            child: Container(
              height: 120,
              width: 50,
              color: Colors.white,
            ),
          ),
            ],)          
        ],),
      ),
    );
  }
}