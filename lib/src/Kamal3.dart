import 'dart:io';

main() {
  const pi = 22 / 7;
  print("Enter le radius: ");
  dynamic radius = stdin.readLineSync();
  radius = double.parse(radius);
  double area = pi * radius * radius;
  print('Required area: ${area}');
}
