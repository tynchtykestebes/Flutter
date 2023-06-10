import 'dart:math';
import 'package:bilimduu_zhashtar_tapshyrma_8/components/gender_card.dart';
import 'package:bilimduu_zhashtar_tapshyrma_8/components/height_card.dart';
import 'package:bilimduu_zhashtar_tapshyrma_8/components/result_page.dart';
import 'package:bilimduu_zhashtar_tapshyrma_8/constants/app_colors.dart';
import 'package:bilimduu_zhashtar_tapshyrma_8/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'components/weight_age_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPressed = true;
  int weight = 60;
  int age = 35;
  int height = 180;
  
  void results (){
    final result = weight / pow(height / 100, 2);
            double roundedResult = double.parse(result.toStringAsFixed(1));
            if(result < 18.5){
              _showAlertDialog(context, 'You are underweight.\nYour BMI is:\n$roundedResult');
            } else if(result >= 18.5 && result < 25){
              _showAlertDialog(context, 'You are at a normal weight.\nYour BMI is:\n$roundedResult');
            } else if(result >= 25 && result < 30){
              _showAlertDialog(context, 'You are overweight.\nYour BMI is:\n$roundedResult');
            } else {
              _showAlertDialog(context, 'You are obese.\nYour BMI is:\n$roundedResult');
            }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.bgcColor,
        centerTitle: true,
        title: AppTexts.bmi),
        body: Padding(
          padding: const EdgeInsets.only(left: 21, top: 39, right: 21, bottom: 41),
          child: Column(
            children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isPressed = true;
                        });
                      },
                      child: GenderCardWidget(icon: Icons.male, text: AppTexts.male, isPressed: isPressed,)),
                  ),
                  const SizedBox(width: 35,),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isPressed = false;
                        });
                      },
                      child: GenderCardWidget(icon: Icons.female, text: AppTexts.female, isPressed: !isPressed,)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18,),
            Expanded(
              child: Row(
                children: [
                  HeightCardWidget(text: AppTexts.height, number: height, cm: AppTexts.cm, height: height, onChanged: (value) { 
                    setState(() {
                      height = value.toInt();
                    });
                   },),
                ],
              ),
            ),
            const SizedBox(height: 18,),
            Expanded(
              child: Row(
                children: [
                  WeightAgeCardWidget(
                    text: AppTexts.weight,
                    number: weight, onPressedRemove: () { 
                      setState(() {
                        weight--;
                      });
                     }, onPressedAdd: () { 
                      setState(() {
                        weight++;
                      });
                      },),
                  const SizedBox(width: 25,),
                  WeightAgeCardWidget(
                    text: AppTexts.age,
                    number: age, onPressedRemove: () { 
                      setState(() {
                        age--;
                      });
                     }, onPressedAdd: () { 
                      setState(() {
                        age++;
                      });
                      },),
                ],
              ),
            ),           
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
            results();
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => ResultPage(
                heightCm: height,
                weightKg: weight,)));
          }, child: AppTexts.calculator,
          ),
    );
  }
}

Future<void> _showAlertDialog(context, String text) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.cardColor,
        title: const Text('Dear User',
        textAlign: TextAlign.center,),
        content: Text(text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20),),
        actions: <Widget>[
          TextButton(
            child: const Text('Calculate again',
            style: TextStyle(fontSize: 24),),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}