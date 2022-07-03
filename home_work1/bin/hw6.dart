//  6.Összegezzük a program argumentumában érkező számokat! Más típusú argumentumokat hagyjuk ki.

void hw6(List<String> args) {
  num psum = 0;
  for (var ag in args) {
    var p = num.tryParse(ag);
    psum += (p == null ? 0 : p);
  }
  print("Az argumentumok összege: $psum");
}
