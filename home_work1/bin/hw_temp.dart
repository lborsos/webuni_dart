import 'dart:io';

void main(List<String> args) {
//  1.Hozzunk létre két ugyanolyan típusú változót különböző kezdeti értékekkel. Cseréljük meg a két változó tartalmát
//  (ha szükséges, vegyünk fel segéd változókat)! A felhasznált változók közül melyek lehetnek final/const?
  separateHW("Home Work 1");
  var a = 1;
  var b = 2;
  print("a = $a");
  print("b = $b");
  final c = a;
  print("Shift a & b");
  a = b;
  b = c;
  print("a = $a");
  print("b = $b");
  // Final lehet a segéd valtozo de const nem, mert...
  // 1. Done


//  2.Készítsünk egy függvényt, melynek egy kötelező pozícionális, egy kötelező elnevezett és egy opcionális elnevezett paramétere van.
//  A függvény írja ki mindegyik paraméterét! Hívjuk meg a függvényt a main() függvényből!

  separateHW("Home Work 2");

  uFunction("Hello", par2: "Szia");
  uFunction("Bello", par3: "Hi3", par2: "Hi2");
  print("EOF HW2\n");


  //  3.Olvassunk be egy számot, kerekítsük a normál kerekítés szabályai szerint, majd írjuk ki a kerekített számot! Kezeljük le,
  //  ha a felhasználó nem számot írt be! (A beolvasásnál használjuk a num.tryParse() függvényt! Olvassuk el, mit csinál, hogyan működik.)

  separateHW("Home Work 3");
  print("Irj be egy számot: ");

  var readLn = stdin.readLineSync();
  var value = num.tryParse(readLn.toString());
  print(readLn);
  print(value);
  if (value == null) {
    print("Nem számot adtál meg!");
  } else {
    print(value?.round());
  }


  //  4.Valósítsuk meg az előző feladatot a num.parsefüggvénnyel is. Miben különbözik a parse() a tryParse() függvénytől, hogyan kell kezelni?

  // a .parse nem szám esetén hibaval leáll, try-catch el le kell kezelni!

  separateHW("Home Work 4");
  print(".parse vel ugyanaz:");

  try {
    var value2 = num.parse(readLn.toString());
    print(readLn);
    print(value2);
    if (value2 == null) {
      print("Nem számot adtál meg!");
    } else {
      print(value2?.round());
    }
  } catch(e) {
    print("Kivetel dobodott!. Nem számot adtál meg!");
  }


  //  5.Készítsünk egy programot, mely kiírja a programba beérkező argumentumokat úgy, hogy egy sorba csak egy argumentum kerüljön!


  separateHW("Home Work 5");
  for (var ag in args) {
    print(ag);
  }


  //  6.Összegezzük a program argumentumában érkező számokat! Más típusú argumentumokat hagyjuk ki.

  separateHW("Home Work 6");
  num psum = 0;
  for (var ag in args) {
    var p = num.tryParse(ag);
    psum += (p == null ? 0 : p);
  }
  print(psum);


  //  7.Rendezzük sorba a felhasználó által beírt számokat! Addig olvassuk, ameddig a felhasználó nullát, negatív számot vagy nem számotír be.


  // a readLn es a value valtozok mar egy elozo kodban var al lettek letrehozva!!! csak itt ujbol felhasznalom!

  separateHW("Home Work 7");
  print("Irj be a sobrarendezeshez szamokat (0 vagy negativ szam  vagy nem szam eseten kilep):");

  List list = [];
  do {
    readLn = stdin.readLineSync();
    value = num.tryParse(readLn.toString());
    if (value==null ? false : value > 0) {
      list.add(value);
    }
  } while (value==null ? false : value > 0);
  print(list);
  list.sort();
  print(list);


  //  8.Az argumentumok közül vegyük ki azokat, amik nem alakíthatóak számmá (használjuk a num.tryParse) függvényt,
  //  a maradékot alakítsuk számmá, rendezzük őket sorba, felezzük meg az összes számot, majd írjuk ki sorban a következő formátumban:
  //  '<index>-ikszám fele: <szám>'. Ha szükséges, akkor az Iterabletípusból a .toList() hívással tudunk listát készíteni.

  separateHW("Home Work 8");
  List list2 = [];
  for (var ag in args) {
    var p = num.tryParse(ag);
    if (p != null) {
      list2.add(p);
    }
  }
  print(list2);
  list2.sort();
  print(list2);
  List list3 =[];
  // hogyan kell elegansabban megoldani?
  for (var element in list2) {
    list3.add(element / 2);
  }
  print(list3);
  var index = 0;
  for (var element in list3) {
    print("$index -ik szám fele: $element");
    index++;
  }

  //  var canBeDivided = list2.every((e) => e % 2 == 0);
//  print(canBeDivided);



}

void separateHW(String phw) {
  print("=====================");
  print(phw);
  print("=====================");
}

void uFunction(String par1, {required String par2, String par3 = 'Hi'}){
  print(par1);
  print(par2);
  print(par3);
  print("-----------");
}