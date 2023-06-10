import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;
  int correctAnswers = 0;
  int incorrectAnswers = 0;
  List<Map<String, dynamic>> questions = [
    {
      'questionText': 'Кыргыз тилинде 32 тамга барбы?',
      'answer': false,
    },
    {
      'questionText': 'Ош - Кыргызстандын борборубу?',
      'answer': false,
    },
    {
      'questionText': 'Чынгыз Айтматов 1928-жылы туулганбы?',
      'answer': true,
    },
    {
      'questionText': 'Кыргызстандын улуттук акча бирдиги сомбу?',
      'answer': true,
    },
    {
      'questionText': 'Чынгыз Айтматов Нобель сыйлыгын алганбы?',
      'answer': false,
    },
    {
      'questionText': 'Португалиянын борбору - Лиссабон шаарыбы?',
      'answer': true,
    },
    {
      'questionText': 'Кыргызстандын калкынын саны 7 миллиондон ашыкпы?',
      'answer': true,
    },
    {
      'questionText': '«Коён жүрөк» деген фразеологизм «баатыр» дегенди түшүндүрөбү?',
      'answer': false,
    },
    {
      'questionText': '«Кессе кан чыкпайт» деген фразеологизм «сараң» дегенди түшүндүрөбү?',
      'answer': true,
    },
    {
      'questionText': 'АКШ Кыргызстанга коңшу өлкөбү?',
      'answer': false,
    },
  ];
  bool isAnswered = false;
  String result = "";

  void checkAnswer(bool userAnswer) {
    setState(() {
      isAnswered = true;
      if (userAnswer == questions[currentQuestionIndex]['answer']) {
        result = "Туура!";
        correctAnswers++;
      } else {
        result = "Туура эмес!";
        incorrectAnswers++;
      }
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Тесттин жыйынтыгы", style: TextStyle(fontSize: 32, color: Colors.green),),
              content: Text(
                "Сиз ${questions.length} суроонун ичинен $correctAnswers суроосуна туура жооп бердиңиз. \n\n$incorrectAnswers суроосуна туура эмес жооп бердиңиз.",
                style: const TextStyle(fontSize: 24),
              ),
              actions: [
                TextButton(
  onPressed: () {
    setState(() {
      currentQuestionIndex = 0;
      correctAnswers = 0;
      incorrectAnswers = 0;
      isAnswered = false;
      result = "";
    });
    Navigator.of(context).pop();
  },
  child: const Text("OK"),
),

              ],
            );
          },
        );
      }
    });
  }

  void nextQuestion() {
    setState(() {
      currentQuestionIndex++;
      if (currentQuestionIndex >= questions.length) {
        currentQuestionIndex = 0;
      }
      isAnswered = false;
      result = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(child: Text('Тапшырма 7',
        style: TextStyle(color: Colors.black),)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questions[currentQuestionIndex]['questionText'],
              style: const TextStyle(fontSize: 32, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                fixedSize: const Size(335, 70),
              ),
              onPressed: () {
                checkAnswer(true);
              },
              child: const Text('Ооба',
              style: TextStyle(
                fontSize: 32),),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                fixedSize: const Size(335, 70),
              ),
              onPressed: () {
                checkAnswer(false);
              },
              child: const Text('Жок',
              style: TextStyle(
                fontSize: 32),),
            ),
            const SizedBox(height: 20),
            isAnswered
                ? Text(
                    result,
                    style: const TextStyle(fontSize: 24),
                  )
                : Container(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
