import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.count});
  final int count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Тапшырма 2")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Card(
            color: Colors.grey,
            shape: RoundedRectangleBorder(
            side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(width: 300, height: 50,
          child: Center(child: Text(
            "$count", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
          ),),
        ],),
      ),
    );
  }
}