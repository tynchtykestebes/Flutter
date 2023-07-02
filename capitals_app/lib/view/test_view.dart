import 'package:capitals_app/constants/app_colors.dart';
import 'package:capitals_app/constants/app_text_style.dart';
import 'package:capitals_app/model/question_answers.dart';
import 'package:flutter/material.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  List<Question> questionAnswers = questionAnswersList;
  int currentQuestionIndex = 0;
  int incorrectAnswerCount = 0;
  int correctAnswerCount = 0;
  int remainingAttempts = 3;
  late int totalQuestions;

  @override
  void initState() {
    super.initState();
    totalQuestions = questionAnswers.length;
  }

  void showIncorrectAnswersDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Unfortunately'),
          content: const Text(
            'You have 3 incorrect answers. Start again!',
            style: TextStyle(fontSize: 18),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                resetTest();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void showTestResultDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(child: Text('Test Result')),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Correct Answers: $correctAnswerCount',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                ),
              ),
              Text(
                'Incorrect Answers: $incorrectAnswerCount',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                resetTest();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void resetTest() {
    setState(() {
      currentQuestionIndex = 0;
      incorrectAnswerCount = 0;
      correctAnswerCount = 0;
      remainingAttempts = 3;
      totalQuestions = questionAnswers.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = questionAnswers[currentQuestionIndex];
    double sliderValue =
        currentQuestionIndex.toDouble() / (questionAnswers.length);
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '$incorrectAnswerCount',
                  style: AppTextStyle.incorrecQuantity,
                ),
                Text(
                  '$totalQuestions',
                  style: AppTextStyle.totalQuantity,
                ),
                Text(
                  '$correctAnswerCount',
                  style: AppTextStyle.correcQuantity,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 40,
          ),
          Text(
            '$remainingAttempts',
            style: AppTextStyle.attempts,
          ),
          const SizedBox(
            width: 40,
          ),
          Icon(
            Icons.favorite,
            color: remainingAttempts >= 3 ? Colors.red : Colors.white,
          ),
          Icon(
            Icons.favorite,
            color: remainingAttempts >= 2 ? Colors.red : Colors.white,
          ),
          Icon(
            Icons.favorite,
            color: remainingAttempts >= 1 ? Colors.red : Colors.white,
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
              value: sliderValue,
              onChanged: (double value) {},
              min: 0,
              max: 1,
              divisions: questionAnswers.length,
            ),
          ),
          Text(
            currentQuestion.text,
            style: AppTextStyle.capitalName,
          ),
          Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: Image.asset(
                'assets/images/capitals/${currentQuestion.image}.jpg'),
          ),
          const SizedBox(
            height: 10,
          ),
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
                Answer answer = currentQuestion.answers[index];
                return Card(
                  color: Colors.grey[400],
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (answer.correctAnswer) {
                          correctAnswerCount++;
                        } else {
                          incorrectAnswerCount++;
                          remainingAttempts--;
                          if (incorrectAnswerCount >= 3) {
                            showIncorrectAnswersDialog();
                          }
                        }

                        if (currentQuestionIndex ==
                            questionAnswers.length - 1) {
                          showTestResultDialog();
                        } else {
                          currentQuestionIndex++;
                        }

                        totalQuestions--;
                      });
                    },
                    child: Center(
                      child: Text(
                        answer.text,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
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
