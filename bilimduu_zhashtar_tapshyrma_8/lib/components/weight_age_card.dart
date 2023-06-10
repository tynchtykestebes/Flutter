import 'package:bilimduu_zhashtar_tapshyrma_8/components/button.dart';
import 'package:bilimduu_zhashtar_tapshyrma_8/constants/app_colors.dart';
import 'package:flutter/material.dart';

class WeightAgeCardWidget extends StatelessWidget {
  const WeightAgeCardWidget({
    super.key, required this.text, required this.number, required this.onPressedAdd, required this.onPressedRemove,
  });
  final Text text;
  final int number;
  final void Function() onPressedAdd;
  final void Function() onPressedRemove;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: AppColors.cardColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      text,
      Text(number.toString(),
      style: const TextStyle(
        color: AppColors.whiteColor,
        fontSize: 40),),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        ButtonWidget(icon: Icons.remove, onPressed: onPressedRemove,),
          const SizedBox(width: 10,),
        ButtonWidget(icon: Icons.add, onPressed: onPressedAdd,),        
      ],),      
    ],),));
  }
}

