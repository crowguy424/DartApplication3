/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_application_3_base.dart';

// TODO: Export any libraries intended for clients of this package.
import 'dart:io';

void main() {
  String operation;
  double first_number;
  double second_number;
  double solution = 0;
  stdout.write("This is basic calc. Enter yer number.\n");
  stdout.write("First number: ");
  first_number = double.parse(stdin.readLineSync()!);
  stdout.write("Second number: ");
  second_number = double.parse(stdin.readLineSync()!);
  stdout.write(
      "\nEnter an operation to perfom, choose from this list: +,-,/,*\n");
  stdout.write("Enter your operation: ");
  operation = stdin.readLineSync()!;
  if (operation != '+' &&
      operation != '-' &&
      operation != '/' &&
      operation != '*') {
    stdout.write("\nInvalid operation!!!! Aborting!!!.....");
    stdout.write("\nPress Enter to exit.");
    stdin.readLineSync();
    return;
  }
  if (operation == '+') {
    solution = first_number + second_number;
    stdout.write("\nAnswer is $solution\nPress Enter to exit.\n");
    stdin.readLineSync();
    return;
  }
  if (operation == '-') {
    solution = first_number - second_number;
    stdout.write("\nAnswer is $solution\nPress Enter to exit.\n");
    stdin.readLineSync();
    return;
  }

  if (operation == '*') {
    solution = first_number * second_number;
    stdout.write("\nAnswer is $solution\nPress Enter to exit.\n");
    stdin.readLineSync();
    return;
  }
  if (operation == '/') {
    if (second_number == 0) {
      stdout.write("Error!!!! Aborting!");
      stdout.write("\nPress Enter to exit.");
      stdin.readLineSync();
      return;
    }
    solution = first_number / second_number;
    stdout.write("\nAnswer is $solution\nPress Enter to exit.\n");
    stdin.readLineSync();
    return;
  }
}
