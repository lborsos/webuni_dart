//  8.Az argumentumok közül vegyük ki azokat, amik nem alakíthatóak számmá (használjuk a num.tryParse) függvényt,
//  a maradékot alakítsuk számmá, rendezzük őket sorba, felezzük meg az összes számot, majd írjuk ki sorban a következő formátumban:
//  '<index>-ikszám fele: <szám>'. Ha szükséges, akkor az Iterabletípusból a .toList() hívással tudunk listát készíteni.

void hw8(List<String> args) {
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
  List list3 = [];
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
}
//  var canBeDivided = list2.every((e) => e % 2 == 0);
//  print(canBeDivided);
