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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      //же Тапшырма 1ди ортого алып келиш учун AppBar-дын ичине томонкуну жазабыз
      //centerTitle: true,
      //же AppBar-дын онун ак кылыш учун томонкуну жазабыз
      //appBar: AppBar(backgroundColor: Colors.white,),
      title: const Center(
        child: Text('Тапшырма 1',
        style: TextStyle(
          fontSize: 18,
          color: Color.fromRGBO(0, 0, 0, 1)),),
      ),
      elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(170, 170, 170, 0.8),
              borderRadius: BorderRadius.circular(10),
              ),
            width: double.infinity,
            height: 44,
            child: Center(
              //баштапкы сан 0го барабар, аны жогоруда "index = 0" деп берип алдык
              child: Text('Сан: $index',
            style: const TextStyle(fontSize: 18),)),
            ),
            const SizedBox(height: 41,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                setState(() {
                  //басканда баштапкы сан 1ге азаят
                  index--;
                });
              }, child: const Icon(Icons.remove)),
              const SizedBox(width: 40,),
              ElevatedButton(
                //ElevatedButton-ду басканда кандайдыр бир команда аткарылат (абал озгорот)
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                setState(() {
                  //басканда баштапкы сан 1ге кобойот
                  index++;
                });
              }, child: const Icon(Icons.add)),
            ],)
        ],),
      ),
    );
  }
}