import 'package:capitals_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgc,
      appBar: AppBar(
        backgroundColor: AppColors.appBarBgc,
        actions: [
          Container(
            height: 50,
            width: 80,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 60,),
          const Text('3'),
          const SizedBox(width: 60,),
          const Icon(Icons.favorite),
          const Icon(Icons.favorite),
          const Icon(Icons.favorite),
        ],
      ),
    );
  }
}
