import 'package:bilimduu_zhashtar_tapshyrma_8/constants/app_colors.dart';
import 'package:flutter/material.dart';

class GenderCardWidget extends StatelessWidget {
  const GenderCardWidget({
    super.key, required this.icon, required this.text, required this.isPressed,
  });
  final IconData icon;
  final Text text;
  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: AppColors.cardColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Icon(icon, size: 70, color: isPressed ? AppColors.pinkColor : null),
      text,
    ],),);
  }
}