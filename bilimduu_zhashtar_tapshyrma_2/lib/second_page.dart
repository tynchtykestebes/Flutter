import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.secondPageIndex});

  //биринчи беттеги санды алыш учун secondPageIndex-ти тузуп алдык
  //secondPageIndex-ти биринчи беттеги index-ке барабарладык
  final int secondPageIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Тапшырма 2'),
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
            child: Center(child: Text('Сан: $secondPageIndex',
            style: const TextStyle(fontSize: 18,
            fontWeight: FontWeight.w500),),),
          ),
        ],),
      ),
    );
  }
}