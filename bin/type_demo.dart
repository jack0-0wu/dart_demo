//late String description;
// void main() {
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
//   var a = null;
//   print(a.runtimeType);
//
//   int lineCount;
//   bool weLikeToCount =true;
//   if (weLikeToCount) {
//     lineCount = countLines();
//   } else {
//     lineCount = 0;
// //   }
//   var nullableButNotNullInt;
//   int x = nullableButNotNullInt;
//   print(x);
//   int? a;
//   print(a);
// dynamic a ;
// print(a);
// Test1 s = Test1();
// s.run();
//description = 'Feijoada!';
//print(description);
// Test test1 = new Test();
// Test test2 = new Test();
// var a = test1;
// var b  = a;
// print(identical(b,test1));
// print(identical(b,test2));
// test1._num = 10;
// print(b._num);
//  Test test = new Test();
//  testFunc(test);
//  print(test._num);
// }
//final name = 'Bob';

//testFunc(Test data){
//  print(data._num);
//  data._num = 10;
//}
//
// countLines() {
//   return 0;
// }
//  class Test{
//     int _num = 0;
//  }
// class Test1{
//   run(){
//     _Test s = _Test();
//     print(s._a);
//     s._a = 10;
//     print(s._a);
//   }
// }
// var a = const [1,2];
// var b = const [1,2];
// var a =  [1,2];
// var b =  [1,2];
// const a =  [1,2];
// const b =  [1,2];
// void main(){
//   print(identical(a,b));
// }
// const list = [1];
//
// late final  b;
//
// void main() {
//   b = 1;
//   b = 2;
// }
// class Test{
// }
// var a = const[1,2];
// void main(){
//   a = [2];
//   print(a);
// }
//
// class A {
//   final a, b;
//   const A(this.a, this.b);
// }
//
// void main() {
//   var a = const A(1, 2);
//   var b = const A(1, 2);
//   print(identical(a, b));
//   print(a == b);
// }
final a = getNum(0);
var b = getNum(1);

int getNum(int num) {
  print(num);
  return 0;
}

void main() {
  // print(a);
  // print(b);
  var test = A();
}

class A {
  static final a = getNum(0);
  late var b = getNum(1);
  var c = getNum(2);
}
