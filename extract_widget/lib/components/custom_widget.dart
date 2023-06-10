import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(data,
    style: const TextStyle(fontSize: 48,
    fontWeight: FontWeight.bold,
    color: Colors.green),);
  }
}