// 11.A program argumentumai között megkapjuk a dolgozók fizetését.
// Egy dolgozó fizetését a következő módon kapjuk: <név>:<fizetés>.
// Tetszőleges sok dolgozó fizetését megkaphatjuk. Olvassuk be a fizetéseket, tároljuk el őket egy Map-ben, és írjuk ki a felhasználó által beírt dolgozó fizetését!
// Ezt folytassuk addig, ameddig a felhasználó le nem állítja az alkalmazást.

import 'dart:io';

void hw11() {
  var args = ["Janos:1000", "Peter:15000", "Bela:20000", "Kati:12000", "Matyi:35000", "Laci:60000"];
  var myMap = {};
  for (var ag in args) {
    var arr = ag.split(':');
    myMap.addAll({arr[0]:arr[1]});
  }
  print(myMap);
  var readLn;
  do {
    print("Irjon be egy dolgozot: ");
    readLn = stdin.readLineSync();
    if (myMap[readLn] != null)
      print("A $readLn dolgozo fizetese ${myMap[readLn]}");
    else
      print("Nem tartalmazza a $readLn dolgozot!");
  } while (true);
}