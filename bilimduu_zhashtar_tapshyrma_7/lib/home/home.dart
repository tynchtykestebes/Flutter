import 'package:bilimduu_zhashtar_tapshyrma_7/constants/app_text_styles.dart';
import 'package:bilimduu_zhashtar_tapshyrma_7/questions_answers.dart';
import 'package:flutter/material.dart';
import 'package:bilimduu_zhashtar_tapshyrma_7/constants/app_colors.dart';

class PianoApp extends StatefulWidget {
  const PianoApp({super.key});

  @override
  State<PianoApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PianoApp> {

  QuestionsAnswers questionsAnswers = QuestionsAnswers();
  
  List<Icon> getIcon = [];

  void checking (bool using) {
    bool correctAnswer = questionsAnswers.getAnswer();
    setState(() {
      if(questionsAnswers.isFinished() == true) {
        showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Тест "Билимдуу жаштар"'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('Тест аягына жетти'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('ОК'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
  questionsAnswers.indexStart();
  getIcon = [];
      } else {
        if (correctAnswer == using){
          getIcon.add(const Icon(Icons.check,
          color: Colors.green,));
        }else{
          getIcon.add(const Icon(Icons.clear,
          color: Colors.red,));
        }
        questionsAnswers.nextQuestion();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.appBarColor,
        centerTitle: true,
        title: const Text('Тапшырма 7',
        style: AppTextStyles.appBarTextStyle,),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
              questionsAnswers.getQuestion(),
              style: AppTextStyles.bodyTextStyle,
              textAlign: TextAlign.center,),
              const SizedBox(height: 102,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: ElevatedButton(onPressed: () {
                    checking(true);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(76, 176, 80, 1)), child: const Text('Туура',
                  style: AppTextStyles.bodyTextStyle,),),
                ),
              ),
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: ElevatedButton(onPressed: () {
                    checking(false);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(239, 68, 58, 1)), child: const Text('Туура эмес',
                  style: AppTextStyles.bodyTextStyle,),),
                ),
              ),
              const SizedBox(height: 30,),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  itemCount: getIcon.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return getIcon[index];
                  }),
              )
          ],),
        ),
    );
  }
}