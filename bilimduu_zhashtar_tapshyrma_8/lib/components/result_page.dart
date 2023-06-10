import 'package:bilimduu_zhashtar_tapshyrma_8/components/calculator_results.dart';
import 'package:bilimduu_zhashtar_tapshyrma_8/constants/app_colors.dart';
import 'package:bilimduu_zhashtar_tapshyrma_8/constants/app_texts.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.heightCm, required this.weightKg});
  final int heightCm;
  final int weightKg;

  @override
  Widget build(BuildContext context) {
    double bmiresults = ResultsInResultPage().bmi(height: heightCm, weight: weightKg);
    return Scaffold(
      backgroundColor: AppColors.bgcColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Result Page'),),
        body: Padding(
          padding: const EdgeInsets.only(left: 11, top: 53, right: 9, bottom: 12),
          child: Column(children: [
            const Text('Your result', style: TextStyle(fontSize: 22),),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: AppColors.cardColor,),
              width: double.infinity,
              height: 315,              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text(ResultsInResultPage().bmiText(bmiresults), style: const TextStyle(fontSize: 24, color: Color.fromRGBO(8, 232, 44, 0.8)),),
                Text(bmiresults.toStringAsFixed(1), style: const TextStyle(fontSize: 80),),
                Text(ResultsInResultPage().bmiMessage(bmiresults), style: const TextStyle(fontSize: 18),),
              ],),),
          ],),
        ),
        bottomNavigationBar: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.pinkColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            ),
            minimumSize: const Size(double.infinity, 73),
          ),
          onPressed: () {
            Navigator.pop(context);          
          }, child: AppTexts.calculateAgain,
          )
    );
  }
}
