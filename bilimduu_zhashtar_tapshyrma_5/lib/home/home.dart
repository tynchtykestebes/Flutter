import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int firstDice = Random().nextInt(6) + 1;
  int secondDice = Random().nextInt(6) + 1;

  void change() {
    setState(() {
      firstDice = Random().nextInt(6) + 1;
      secondDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 234, 59, 1),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Тапшырма 5',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (firstDice == secondDice)
              Container(
                color: Colors.white,
                width: 105,
                height: 35,
                child: const Center(
                  child: Text(
                    'Ура! Куш!',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                Expanded(
                    child: InkWell(
                        onTap: () {
                          change();
                        },
                        child:
                            Image.asset('assets/images/dice$firstDice.png'))),
                const SizedBox(
                  width: 25,
                ),
                Expanded(
                    child: InkWell(
                        onTap: () {
                          change();
                        },
                        child:
                            Image.asset('assets/images/dice$secondDice.png'))),
                const SizedBox(
                  width: 25,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
