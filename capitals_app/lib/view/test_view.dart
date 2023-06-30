import 'package:capitals_app/constants/app_colors.dart';
import 'package:capitals_app/constants/app_text_style.dart';
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
            height: 30,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '0',
                  style: AppTextStyle.incorrecQuantity,
                ),
                Text(
                  '32',
                  style: AppTextStyle.totalQuantity,
                ),
                Text(
                  '0',
                  style: AppTextStyle.correcQuantity,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          const Text(
            '3',
            style: AppTextStyle.attempts,
          ),
          const SizedBox(
            width: 40,
          ),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SliderTheme(
            data: SliderThemeData(
              thumbShape: SliderComponentShape.noThumb,
              trackHeight: 5.0,
              overlayColor: Colors.transparent,
              activeTrackColor: Colors.blue,
              inactiveTrackColor: Colors.grey.withOpacity(0.5),
            ),
            child: Slider(
              value: 25,
              onChanged: (v) {},
              min: 0,
              max: 50,
            ),
          ),
          const Text(
            'Paris',
            style: AppTextStyle.capitalName,
          ),
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: Image.asset('assets/images/capitals/paris.jpg'),
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.6,
              ),
              itemCount: 4,
              itemBuilder: ((context, index) {
                return Card(
                  color: Colors.grey[400],
                  child: InkWell(
                    onTap: () {},
                    child: const Center(
                      child: Text('data'),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
