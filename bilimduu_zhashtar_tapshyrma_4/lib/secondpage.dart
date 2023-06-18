import 'package:bilimduu_zhashtar_tapshyrma_4/home.dart';
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
      home: const IamRich(),
    );
  }
}

class IamRich extends StatefulWidget {
  const IamRich({super.key});

  @override
  State<IamRich> createState() => _IamRichState();
}

class _IamRichState extends State<IamRich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(236, 186, 11, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(236, 185, 11, 1),
        centerTitle: true,
        title: const Text(
          'Тапшырма 3',
          style: TextStyle(
            fontSize: 18,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyHomePage()));
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'I\'m Rich',
              //же болбосо Text("I'm Rich",
              style: TextStyle(fontSize: 48, fontFamily: 'Sofia-Regular'),
            ),
            Image.asset(
              'assets/images/diamond.png',
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
