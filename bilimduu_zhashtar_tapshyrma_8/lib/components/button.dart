import 'package:bilimduu_zhashtar_tapshyrma_8/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key, required this.icon, required this.onPressed,
  });
  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      height: 45,
      child: FloatingActionButton(
        backgroundColor: AppColors.greyColor,
        onPressed: onPressed, child: Icon(icon,
        size: 25,
        color: AppColors.whiteColor,),));
  }
}