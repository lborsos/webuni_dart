//  2.Készítsünk egy függvényt, melynek egy kötelező pozícionális, egy kötelező elnevezett és egy opcionális elnevezett paramétere van.
//  A függvény írja ki mindegyik paraméterét! Hívjuk meg a függvényt a main() függvényből!

void hw2() {

  uFunction("Hello", par2: "Szia");
  uFunction("Bello", par3: "Hi3", par2: "Hi2");
  print("EOF HW2\n");
}

void uFunction(String par1, {required String par2, String par3 = 'Hi'}){
  print(par1);
  print(par2);
  print(par3);
  print("-----------");
}