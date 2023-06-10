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
  void change(){
    setState(() {
      firstDice = Random().nextInt(6) + 1;
      secondDice = Random().nextInt(6) + 1;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE93B),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffffffff),
        title: const Center(
          child: Text("Тапшырма 5", 
          style: TextStyle(color: Color(0xff000000), 
          fontFamily: "assets/fonts/Roboto-Regular"))),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(firstDice == secondDice)
          Container(
            width: 100,
            height: 25,
            color: const Color(0xffFFFFFF),
            child: const Center(child: Text("Ура! Куш!", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(child: InkWell(
                  onTap: (){
                  change();                  
                }, child: Image.asset("assets/images/dice$firstDice.png"))),
                const SizedBox(width: 25,),
                Expanded(child: InkWell(
                  onTap: (){
                  change();
                }, child: Image.asset("assets/images/dice$secondDice.png"))),
              ],
            ),
          )
        ],
      ),
    );
  }
}