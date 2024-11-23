import 'dart:io';

void main() {
  Map<String, String> contactList = {
    "Hadi": "0312121212",
    "Haris": "03121215345",
    "Tauheed": "031213254232",
    "Hamza": "0312325432",
    "Ghulam": "03122131112"
  };

  while (true) {
    print('''
Enter following to perform a task

1. Add a new contact.
2. List all contacts.
3. Search for a contact by name.
4. Exit the program.

''');

    String? choice = stdin.readLineSync();

    if (choice == "1") {
      print("Enter contact Name: ");
      String? name = stdin.readLineSync();

      print("Enter contact Number: ");
      String? number = stdin.readLineSync();

      if (name != null && number != null) {
        contactList.addAll({name: number});
      }
      else{
        print("Invalid name or number");
      }
    } else if (choice == "2") {
      for (var entry in contactList.entries) {
        print("Name: ${entry.key}, Contact: ${entry.value}");
      }
    } else if (choice == "3") {
      
      print("Enter contact Name to search: ");
      String? name = stdin.readLineSync();

      if(contactList.containsKey(name)){
        print("Contact is ${contactList[name]}");
      }
      else{
        print("Contact Not Found");
      }

    } else if (choice == "4") {
      print("We are exiting");
      break;
    } else {
      print("Invalid Input");
    }
  }
}
