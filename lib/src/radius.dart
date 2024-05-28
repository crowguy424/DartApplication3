import 'dart:io';

main() {
  var fileName = stdin.readLineSync();
  var fileSplit = fileName!.split('.');
  print(fileSplit[1]);
}
