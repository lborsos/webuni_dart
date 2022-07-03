import 'dart:io';

void main() {
  var myMap = {1: "Helló", 2:"Belló", 3:"Olló"};
  var readLine = stdin.readLineSync();

//   print(readLine?.length ?? 0);
//   print(readLine?.runes ?? 0);
//   print(readLine?.codeUnits ?? 0);
  // var testString = "őHellóÉkezet";
  // print(testString.runes.length);
  // print(testString.length);
  // print(testString.runes);

  myMap.values.forEach((element) {print(element.contains(readLine!)); });
  myMap.values.forEach((element) {print(element.contains("Ollo")); });

}