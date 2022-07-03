//  3.Olvassunk be egy számot, kerekítsük a normál kerekítés szabályai szerint, majd írjuk ki a kerekített számot! Kezeljük le,
//  ha a felhasználó nem számot írt be! (A beolvasásnál használjuk a num.tryParse() függvényt! Olvassuk el, mit csinál, hogyan működik.)

import 'dart:io';

void hw3() {
  print("Irj be egy számot: ");

  var readLn = stdin.readLineSync();
  var value = num.tryParse(readLn.toString());
  print(readLn);
  print(value);
  if (value == null) {
    print("Nem számot adtál meg!");
  } else {
    print("A kerekitett érték: ${value!.round()}");
  }
}

// Hibat ad futttatasnal:
// bin/hw3.dart:16:34: Warning: Operand of null-aware operation '!' has type 'num' which excludes null.
//     print("A kerekitett érték: ${value!.round()}");
//                                  ^

// Hgyan küszöbölhet| ki?
