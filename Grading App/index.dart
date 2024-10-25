import 'dart:io';

void main() {
  // print("Conditional Statement");

  // if, if else, if else-if else, nested if else

  while (true) {
    print("Enter your percentage: ");

    double? percent = double.tryParse(stdin.readLineSync()!);
    String grade;

    if (percent != null) {
      if (percent >= 75) {
        grade = "DISTINCTION";
      } else if (percent >= 60) {
        grade = "CREDIT";
      } else if (percent >= 40) {
        grade = "PASS";
      } else {
        grade = "FAIL";
      }

      print("Your percentage is $percent% and Grade is '$grade'");
      
      break;

    } else {
      print("Invalid Percentage");
    }
  }
}
