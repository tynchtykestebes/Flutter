import 'package:bilimduu_zhashtar_tapshyrma_7/model.dart';

class QuestionsAnswers {
  int index = 0;
  List<QuizModel> questionAnswer = [
      QuizModel(question: 'Кыргызстанда 7 область барбы?', answer: true),
      QuizModel(question: 'Кыргызстан Швейцария менен чектешеби?', answer: false),
      QuizModel(question: 'Кыргызстандын борбору Бишкек шаарыбы?', answer: true),
      QuizModel(question: 'Кыргызстанда Виктория колу жайгашканбы?', answer: false),
      QuizModel(question: 'Кыргызстанда алтындын запасы барбы?', answer: true),
  ];

  String getQuestion() {
    return questionAnswer[index].question;
  }

  bool getAnswer() {
    return questionAnswer[index].answer;
  }

  void nextQuestion(){
    if(index <= questionAnswer.length) {
      index++;
    }
  }
  bool isFinished(){
    if(questionAnswer[index] == questionAnswer.last){
      return true;
    } else {
      return false;
    }
  }
  void indexStart() {
    index = 0;
  }
}