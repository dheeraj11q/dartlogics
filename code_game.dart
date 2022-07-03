import 'dart:io';
import 'dart:math';

List<String> questions = [
  "Reverse a string with loop.",
  "How to check palindrome?",
  "How to reverse a string without loop?",
  "How to print same numbers from integer list?",
  "How to get the metching characters in a string?",
  "How get non matching characters in a string?",
  "How to calculate the number of vawel and consonants in a string?",
  "How do you prove that the two string are anagrams?",
  "Find the count for the occurence of a particular character in a string.",
  "How to verify if two strings are a rotation mutually?  psychology  chologypsy?",
  "How to caculate the number of numerical digits in a string?",
  "How to print these type value 12345654321?",
  "How to compute the first character of a string that is not repeated?",
  "How to search missing number in array that contain integers from 1 to 10?",
  "How to get matching elements in a integer array?",
  "How to delete repeated elements in a integer array?",
  "Determine the largest and smallest number in a integer list with is not sorted.",
  "Explain the bubble sort Algorithm",
  "Implement insertion sort algorithm.",
  "How to swap to string variables each other without using third variable?",
  "Determine a second largest element in a integer array.",
  "Explain the reversal of an array.",
  "How to remove spacial characters fro string?"
];

List<int> cameIndex = [];
int randomeNum = 0;
int score = 0;
DateTime? dateTime;
int solveTime = 5;

void runCodeQuestion() {
  while (true) {
    // when all question are completed
    if (cameIndex.length == questions.length) {
      total();
      break;
    }

    stdout.write("\nChoose Command : Get Question - 1, Exit - 2\n");
    stdout.write("Enter Here : ");
    String? input = stdin.readLineSync();

    if (input == "2") {
      total();
      break;
    } else {
      randomeNum = randomeNumGen(questions.length);

      sleep(const Duration(seconds: 1));

      if (!cameIndex.contains(randomeNum)) {
        questionAsk();
      }

      // if again

      else {
        while (true) {
          randomeNum = randomeNumGen(questions.length);

          if (!cameIndex.contains(randomeNum)) {
            questionAsk();
            break;
          }
        }
      }
    }
  }
}

int randomeNumGen(int length) {
  return Random().nextInt(length);
}

void questionAsk() {
  dateTime = DateTime.now();
  print("Question : " + questions[randomeNum]);
  cameIndex.add(randomeNum);
  stdout.write(
      "You have $solveTime minute to solve. if it is solved press (Y/N)\n");
  stdout.write("Enter Here : ");
  String? input = stdin.readLineSync();
  if (input == "y" &&
      (dateTimeToSecond(DateTime.now()) - dateTimeToSecond(dateTime!)) <=
          (solveTime * 60)) {
    score += 1;
    print(
        "You Take ${Duration(seconds: (dateTimeToSecond(DateTime.now()) - dateTimeToSecond(dateTime!))).inMinutes} minutes");
  } else {
    print("Time Over");
  }
}

int dateTimeToSecond(DateTime dt) {
  return Duration(hours: dt.hour, minutes: dt.minute, seconds: dt.second)
      .inSeconds;
}

void total() {
  // total
  print("--- Game Over ---");
  stdout.write("Total Question = ${questions.length}\n");
  stdout.write("Total score = $score");
}
