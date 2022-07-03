//  4.Valósítsuk meg az előző feladatot a num.parsefüggvénnyel is. Miben különbözik a parse() a tryParse() függvénytől, hogyan kell kezelni?
// a .parse nem szám esetén hibaval leáll, try-catch el le kell kezelni!

import 'dart:io';

void hw4() {
  print(".parse vel ugyanaz:");
  print("Irj be egy számot: ");
  try {
    var readLn = stdin.readLineSync();
    var value = num.parse(readLn.toString());
    print(readLn);
    print(value);
    if (value == null) {
      print("Nem számot adtál meg!");
    } else {
      print(value?.round());
    }
  } catch (e) {
    print("Kivetel dobodott!. Nem számot adtál meg!");
  }
}

// itt is hibat ad futtatasnal!
// mi a megoldas?
