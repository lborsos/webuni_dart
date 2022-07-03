// 10.Olvassuk be a felhasználó által írt szöveget. Írjuk ki, hogy ez a szöveg megtalálható-e a program argumentumai között!
// A program addig fusson, ameddig a felhasználó le nem állítja. (Használjunk halmazokat!)

  import 'dart:io';

  void hw10(List<String> args) {
    var mySet = args.toSet();
    var readLn;
    do {
      print("Irjon be egy szoveget: ");
      readLn = stdin.readLineSync();
      if (mySet.contains(readLn))
        print("Tartalmazza a $readLn szoveget");
      else
        print("Nem tartalmazza a $readLn szoveget");
    } while (true);
  }

/*
bool isMatch (parg, p2) {
  for (var ag in parg) {
    if (ag == p2)
      return true;
    else
      return false;
  }
}
*/
