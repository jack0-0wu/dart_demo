import 'dart:async';

import 'dart:io';
//
//   main() async {
//   // try {
//   //   int num;
//   //   num = await getNum();
//   //   print(num);
//   // } catch (e) {}
//   print( main());
//   print(1);
// }
//
// Future<int> getNum() {
//   return Future.delayed(Duration(seconds: 2), () => 1);
// }
//
// int intA() {
//   Future.delayed(Duration(seconds: 2), () {});
//   sleep(Duration(seconds: 2));
//   return 1;
// }
//
//  intTest() async {
//   print(123);
// }
// void main() {
//   int num;
//   getNum().then((value) {
//     num = value;
//     print(num);
//   });
//   print("同步代码");
// }
//
// Future<int> getNum() {
//   return Future.delayed(Duration(seconds: 2), () => 1);
// }
void main() async{
  int num;
  num = await getNum();
  print(num);
  print("同步代码");
}

Future<int> getNum() {
  return Future.delayed(Duration(seconds: 2), () => 1);
}