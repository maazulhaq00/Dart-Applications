import 'dart:io';

void main() {

  print("Math Table App");

  while (true) {
    print("Enter a number:");
    int? number = int.tryParse(stdin.readLineSync()!);
    
    if (number != null) {
      
      // Print table
      for(int i = 1; i <= 10; i++){

        print("$number x $i = ${number*i}");

      }

      break;
    } else {
      print("Invalid Input");
    }
  }

}
