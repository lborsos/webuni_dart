// 9.Készítsünk egy szállítási díjat kalkuláló programot! Olvassuk be, hogy a felhasználó melyik országban él.
// A szállítási költség így alakul:
// a.Ha Magyarország, akkor 3000 Ft
// b.Ha Ausztria, akkor 4000 Ft
// c.Ha Németország, akkor 5000 Ft
// d.Minden más esetben 10000 Ft
// Írjuk ki a szállítási költséget

import 'dart:io';

void hw9() {
  var myMap = {"Magyarország":3000, "Ausztria":4000, "Németország":5000, "hu":3000};
  var other = 10000;
  print("Irjon be egy országot: ");
  var readLn = stdin.readLineSync();
  print(readLn);

  print("Szallitasi koltseg: ${myMap[readLn] ?? other}");
  /*
  var usdKey = myMap.keys.firstWhere(
          (k) => myMap[k] == readLn, orElse: () => other);
*/
//  print("Szamlazasi koltseg: $usdKey");
//  print("Szamlazasi koltseg: ${usdKey==null ? other : usdKey}");
}
