//  7.Rendezzük sorba a felhasználó által beírt számokat! Addig olvassuk, ameddig a felhasználó nullát, negatív számot vagy nem számotír be.
// a readLn es a value valtozok mar egy elozo kodban var al lettek letrehozva!!! csak itt ujbol felhasznalom!

import 'dart:io';

void hw7() {
  print("Irj be a sobrarendezeshez szamokat (0 vagy negativ szam  vagy nem szam eseten kilep):");

  var readLn;
  var value;
  List list = [];
  do {
    readLn = stdin.readLineSync();
    value = num.tryParse(readLn.toString());
    if (value == null ? false : value > 0) {
      list.add(value);
    }
  } while (value == null ? false : value > 0);
  print(list);
  list.sort();
  print(list);
}
