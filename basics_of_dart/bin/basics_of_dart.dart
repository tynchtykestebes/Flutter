import 'package:basics_of_dart/basics_of_dart.dart' as basics_of_dart;

void main() {
  print("1________________________________________________");
  // Print Statement
  print('Hello, World'); // It is String
  print('3'); // It is also String
  print(3); // It is int

  print("2________________________________________________");
  // Operators (+, -, *, /)
  print(3 + 2);
  print(3 - 2);
  print(3 * 2);
  print(3 / 2);

  // Comments
  // Dart is interesting
  // Flutter is perfect
  /* - it is the beginning of the comments
  I like Dart
  I like Flutter
  It is the end of the comments */

  // Variables
  // String - "Hello, World"
  // int - 5
  // double - 5.5
  // bool - true/false
  // dynamic - it can be everything. F.e., "Hello, World", 5, 5.5, true/false

  print("3________________________________________________");
  int firstValue = 400;
  int secondValue = 50;
  print(firstValue);
  print(secondValue);
  print(firstValue / secondValue);
  print(firstValue * secondValue);
  print(firstValue + secondValue);
  print(firstValue - secondValue);

  print("4________________________________________________");
  String thirdValue = "Hello, World";
  print(thirdValue);
  bool fourthValue = true;
  print(fourthValue);

  print("5________________________________________________");
  // Variable name should be unique, there can’t be 2 variables with the same name
  int myFirstValue = 20;
  print(myFirstValue);
  myFirstValue = 100;
  print(myFirstValue);

  print("6________________________________________________");
  int mySecondValue = 20;
  print(mySecondValue);
  mySecondValue = mySecondValue + 75;
  print(mySecondValue);

  print("7________________________________________________");
  int myThirdValue = 25;
  print(myThirdValue);
  myThirdValue -= 75;
  print(myThirdValue);

  print("8________________________________________________");
  String greeting = "Hello";
  print(greeting);
  greeting = '$greeting Tynchtyk';
  print(greeting);

  print("9________________________________________________");
  String greeting2 = "Hello";
  print(greeting2);
  greeting2 = '${greeting2.length} Tynchtyk';
  print(greeting2);

  print("10________________________________________________");
  String greeting3 = "Hello";
  print(greeting3);
  greeting3 = '\$'; // For $ sign is '\$'
  print(greeting3);

  print("11________________________________________________");
  String greeting4 = "Hello";
  print(greeting4);
  greeting4 = 'Hello \nTynchtyk \nHow are you'; // \n is for new line
  print(greeting4);
}
