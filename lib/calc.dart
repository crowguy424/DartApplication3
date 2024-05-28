import 'dart:io';

void main() {
  String operation;
  double first_number;
  double second_number;
  double solution = 0;
  stdout
      .write("This is a basic calculator program, enter the first number. \n");
  stdout.write("First number: ");
  first_number = double.parse(stdin.readLineSync()!);
  stdout.write("Second number: ");
  second_number = double.parse(stdin.readLineSync()!);
  stdout.write(
      "\nEnter an operation to perform, choose one from the list: +, -, /, * \n");
  stdout.write("Enter your operation: ");
  operation = stdin.readLineSync()!;
  if (operation != '+' &&
      operation != '-' &&
      operation != '/' &&
      operation != '*') {
    stdout.write("\nInvalid operation!!! Aborting!!!!");
    stdin.readLineSync();
    return;
  }
  if (operation == '+') {
    solution = first_number + second_number;
    stdout.write("\n Your answer is: $solution\nPress Enter to exit.\n");
    stdin.readLineSync();
    return;
  }
  if (operation == '-') {
    solution = first_number - second_number;
    stdout.write("\n Your answer is: $solution\nPress Enter to exit.\n");
    stdin.readLineSync();
    return;
  }
  if (operation == '*') {
    solution = first_number * second_number;
    stdout.write("\n Your answer is: $solution\nPress Enter to exit.\n");
    stdin.readLineSync();
    return;
  }

  if (operation == '/') {
    if (second_number == 0) {
      stdout.write("\nYou can't divide by zero! Aborting!");
      stdout.write("\nPress Enter to exit.");
      stdin.readLineSync();
      return;
    }
    solution = first_number / second_number;
    stdout.write("\nYour answer is: $solution\nPress Enter to exit.\n");
    stdin.readLineSync();
    return;
  }
}
