void main(){
  // int a = 1;
  // double d = 2;
  //
  // print(a.toDouble().runtimeType);
  // print(d.toInt().runtimeType);
  // int.parse("source");
  // double.parse("source");
  // num.parse("input");
  // num n = 5;
  // print(n.runtimeType);
  // n= 5.5;
  // print(n.runtimeType);
  // print(num.parse("1.5") is double);
  // double c = 2.0123456789012345678901234567890123456789012345678901234567890123;
  // print(c);
//  List test;
//  test = ["1","2","3"];
//  print(test);
  var a = null;
  print(a.runtimeType);

  int lineCount;
  bool weLikeToCount =true;
  if (weLikeToCount) {
    lineCount = countLines();
  } else {
    lineCount = 0;
  }

  print(lineCount);
}
countLines(){
  return 0;
}