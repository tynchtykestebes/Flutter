import 'package:audioplayers/audioplayers.dart';
import 'package:bilimduu_zhashtar_tapshyrma_6/components/key_widget.dart';
import 'package:flutter/material.dart';

class PianoScreen extends StatefulWidget {
  const PianoScreen({super.key});

  @override
  State<PianoScreen> createState() => _PianoScreenState();
}

class _PianoScreenState extends State<PianoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Piano Screen'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            KeyWidget(onTap: () {
              AudioPlayer().play(AssetSource('do.mp3'));
            }),
            const SizedBox(width: 10),
            KeyWidget(onTap: () {
              AudioPlayer().play(AssetSource('re.mp3'));
            }),
            const SizedBox(width: 10),
            KeyWidget(onTap: () {
              AudioPlayer().play(AssetSource('mi.mp3'));
            }),
            const SizedBox(width: 10),
            KeyWidget(onTap: () {
              AudioPlayer().play(AssetSource('fa.mp3'));
            }),
            const SizedBox(width: 10),
            KeyWidget(onTap: () {
              AudioPlayer().play(AssetSource('sol.mp3'));
            }),
            const SizedBox(width: 10),
            KeyWidget(onTap: () {
              AudioPlayer().play(AssetSource('lya.mp3'));
            }),
            const SizedBox(width: 10),
            KeyWidget(onTap: () {
              AudioPlayer().play(AssetSource('si.mp3'));
            }),
            const SizedBox(width: 10),
            KeyWidget(onTap: () {
              AudioPlayer().play(AssetSource('dooktava.mp3'));
            }),
            ],),
          ],),
        ),
    );
  }
}