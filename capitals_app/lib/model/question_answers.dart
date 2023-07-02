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

const Question q6 = Question(
  text: 'Athens',
  image: 'athens',
  answers: [
    Answer(text: 'Greece', correctAnswer: true),
    Answer(text: 'Hungary', correctAnswer: false),
    Answer(text: 'Latvia', correctAnswer: false),
    Answer(text: 'Georgia', correctAnswer: false),
  ],
);

const Question q7 = Question(
  text: 'Brussels',
  image: 'brussels',
  answers: [
    Answer(text: 'Netherlands', correctAnswer: false),
    Answer(text: 'Switzerland', correctAnswer: false),
    Answer(text: 'Belgium', correctAnswer: true),
    Answer(text: 'Lithuania', correctAnswer: false),
  ],
);

const Question q8 = Question(
  text: 'Budapest',
  image: 'budapest',
  answers: [
    Answer(text: 'Monaco', correctAnswer: false),
    Answer(text: 'Hungary', correctAnswer: true),
    Answer(text: 'Czech Republic', correctAnswer: false),
    Answer(text: 'Liechtenstein', correctAnswer: false),
  ],
);

const Question q9 = Question(
  text: 'Prague',
  image: 'prague',
  answers: [
    Answer(text: 'Chech Republic', correctAnswer: true),
    Answer(text: 'Switzerland', correctAnswer: false),
    Answer(text: 'Malta', correctAnswer: false),
    Answer(text: 'Austria', correctAnswer: false),
  ],
);

const Question q10 = Question(
  text: 'Rome',
  image: 'rome',
  answers: [
    Answer(text: 'Spain', correctAnswer: false),
    Answer(text: 'Belgium', correctAnswer: false),
    Answer(text: 'Ireland', correctAnswer: false),
    Answer(text: 'Italy', correctAnswer: true),
  ],
);

List<Question> questionAnswersList = [
  q1,
  q2,
  q3,
  q4,
  q5,
  q6,
  q7,
  q8,
  q9,
  q10,
];
