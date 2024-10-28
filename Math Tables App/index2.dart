import 'dart:io';

void main(List<String> args) {

  while(true){
    
    print("Enter first number");
    var num1 = int.tryParse(stdin.readLineSync()!);

    print("Enter second number");
    var num2 = int.tryParse(stdin.readLineSync()!);

    if(num1 != null && num2 != null && num1 <= num2){
      // Print tables
      for(int i = num1; i <= num2; i++){
        for(int j = 1; j <= 10; j++){
          print("$i x $j = ${i*j}");
        }
      }

      break;
    }
    else{
      print("Invalid inputs");
    }
  }
  
}