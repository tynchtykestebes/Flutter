class Question {
  const Question(
      {required this.text, required this.image, required this.answers});
  final String text;
  final String image;
  final List<Answer> answers;
}

class Answer {
  const Answer({required this.text, required this.correctAnswer});
  final String text;
  final bool correctAnswer;
}

const Question q1 = Question(
  text: 'Paris',
  image: 'paris',
  answers: [
    Answer(text: 'Germany', correctAnswer: false),
    Answer(text: 'France', correctAnswer: true),
    Answer(text: 'Portugal', correctAnswer: false),
    Answer(text: 'Norway', correctAnswer: false),
  ],
);

const Question q2 = Question(
  text: 'Berlin',
  image: 'berlin',
  answers: [
    Answer(text: 'Germany', correctAnswer: true),
    Answer(text: 'Italy', correctAnswer: false),
    Answer(text: 'Macedonia', correctAnswer: false),
    Answer(text: 'Serbia', correctAnswer: false),
  ],
);

const Question q3 = Question(
  text: 'Lisbon',
  image: 'lisbon',
  answers: [
    Answer(text: 'Sweden', correctAnswer: false),
    Answer(text: 'Croatia', correctAnswer: false),
    Answer(text: 'Portugal', correctAnswer: true),
    Answer(text: 'Albania', correctAnswer: false),
  ],
);

const Question q4 = Question(
  text: 'Madrid',
  image: 'madrid',
  answers: [
    Answer(text: 'Spain', correctAnswer: true),
    Answer(text: 'Luxemburg', correctAnswer: false),
    Answer(text: 'Andorra', correctAnswer: false),
    Answer(text: 'Italy', correctAnswer: false),
  ],
);

const Question q5 = Question(
  text: 'Warsaw',
  image: 'warsaw',
  answers: [
    Answer(text: 'Chech Republic', correctAnswer: false),
    Answer(text: 'Slovakia', correctAnswer: false),
    Answer(text: 'Slovenia', correctAnswer: false),
    Answer(text: 'Poland', correctAnswer: true),
  ],
);

List<Question> questionAnswersList = [
  q1,
  q2,
  q3,
  q4,
  q5,
];
