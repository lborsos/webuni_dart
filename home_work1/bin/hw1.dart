//  1.Hozzunk létre két ugyanolyan típusú változót különböző kezdeti értékekkel. Cseréljük meg a két változó tartalmát
//  (ha szükséges, vegyünk fel segéd változókat)! A felhasznált változók közül melyek lehetnek final/const?

void hw1() {
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

}
