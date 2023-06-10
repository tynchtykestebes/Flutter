import 'package:flutter/material.dart';
import 'package:tapshyrma_2/secondpage.dart';

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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Тапшырма 1",
        style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "Сан: $index",
                  style: const TextStyle(fontSize: 20),
                  )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                    setState(() {
                      index--;
                    });
                  },
                  child: const Icon(Icons.remove)),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        index++;
                      });
                  }, child: const Icon(Icons.add)),
                  
                ],
              ),
                  const SizedBox(
                    height: 10,),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(count: index,)));
                  }, icon: const Icon(Icons.next_plan,
                    size: 50,
                    color: Colors.red,))
            ],
          ),
        ),
      ),
    );
  }
}