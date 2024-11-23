import 'dart:math';

void main() {
  BankAccount ba1 = BankAccount("Saad", 7654, 20000);

  ba1.checkBalance(1234);
  ba1.checkBalance(7654);
  ba1.deposit(7654, 200);
  ba1.withdraw(7654, 3000);
  ba1.withdraw(7654, 20000);

  SavingAccount sa1 = SavingAccount("Saud", 1245, 5, 30000);
  sa1.checkBalance(3456);
  sa1.addInterest();

  CurrentAccount ca1 = CurrentAccount("Hasham", 3344, 1000, 5000);
  ca1.checkBalance(3344);
  ca1.withdraw(3344, 1000);
  ca1.withdraw(3344, 4500);
  ca1.withdraw(3344, 700);
}

class BankAccount {
  var accountHolder, balance, pin;

  BankAccount(String accountHolder, int pin, [int balance = 0]) {
    this.accountHolder = accountHolder;
    this.balance = balance;
    this.pin = pin;
  }

  void checkBalance(int pin) {
    if (this.pin == pin) {
      print(
          "Dear $accountHolder, your currecnt account balance is Rs. $balance");
    } else {
      print("Sorry, pin is incorrect");
    }
  }

  void deposit(int pin, int amount) {
    if (this.pin == pin) {
      this.balance += amount; // bal = bal + amount
      print(
          "Dear $accountHolder, Rs. $amount is deposited into your account. Your updated balance is Rs. $balance");
    } else {
      print("Sorry, pin is incorrect");
    }
  }

  void withdraw(int pin, int amount) {
    if (this.pin == pin) {
      if (amount <= this.balance) {
        this.balance -= amount; // bal = bal + amount

        print(
            "Dear $accountHolder, Rs. $amount is withdrawn from your account. Your updated balance is Rs. $balance");
      } else {
        print(
            "Sorry, your balance is insufficient to make this tansaction. Your current balance is Rs. $balance");
      }
    } else {
      print("Sorry, pin is incorrect");
    }
  }
}

class SavingAccount extends BankAccount {
  var interestRate;

  SavingAccount(String accountHolder, int pin, double interestRate,
      [int balance = 0])
      : super(accountHolder, pin, balance) {
    this.interestRate = interestRate;
  }

  void addInterest() {
    double interestAmount = this.balance * (this.interestRate / 100);
    this.balance += interestAmount;

    print(
        "Dear $accountHolder, your interest amount $interestAmount is added to your account. Your current balance is Rs. $balance");
  }
}

// Polymorphism
class CurrentAccount extends BankAccount {
  var overDraftLimit;

  CurrentAccount(String accountHolder, int pin, double overDraftLimit,
      [int balance = 0])
      : super(accountHolder, pin, balance) {
    this.overDraftLimit = overDraftLimit;
  }

  @override
  void withdraw(int pin, int amount) {
    if (this.pin == pin) {
 
      if (amount <= this.balance + this.overDraftLimit) {
        this.balance -= amount; // bal = bal + amount

        print(
            "Dear $accountHolder, Rs. $amount is withdrawn (overdraft) from your account. Your updated balance is Rs. $balance");
      } else {
        print(
            "Sorry, your balance is insufficient to make this tansaction. Your current balance is Rs. $balance");
      }
    } else {
      print("Sorry, pin is incorrect");
    }
  }
}
