import 'package:bilimduu_zhashtar_tapshyrma_8/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HeightCardWidget extends StatelessWidget {
  const HeightCardWidget({
    super.key, required this.text, required this.number, required this.cm, required this.height, required this.onChanged
  });
  final Text text;
  final int number;
  final Text cm;
  final int height;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: AppColors.cardColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      text,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [Text(number.toString(),
      style: const TextStyle(
        color: AppColors.whiteColor,
        fontSize: 40),),
        const SizedBox(width: 4,),
      cm,      
      ],),
        Slider.adaptive(
        value: height.toDouble(),
        min: 120,
        max: 240,
        activeColor: AppColors.whiteColor,
        inactiveColor: AppColors.greyColor,
        thumbColor: AppColors.pinkColor,
        label: 'Set some value',
        onChanged: onChanged,
        ),   
    ],),));
  }
}