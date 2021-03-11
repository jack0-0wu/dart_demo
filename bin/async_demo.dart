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
// void main() async{
//   int num;
//   num = await getNum();
//   print(num);
//   print("同步代码");
// }
//
// Future<int> getNum() {
//   return Future.delayed(Duration(seconds: 2), () => 1);
// }

// Future<int> sumStream(Stream<int> stream) async {
//   var sum = 0;
//   await for (var value in stream) {
//     sum += value;
//     print(sum);
//   }
//   print("111");
//   return sum;
// }
//
// Stream<int> countStream(int to) async* {
//   for (int i = 1; i <= to; i++) {
//     yield i;
//   }
// }
//
// main() async {
//   var stream = countStream(10);
//   var sum = await sumStream(stream);
//   print(sum); // 55
// }
// void main(List<String> arguments) {
//   testFuture();
//   print('main函数上的代码');
// }
//
// Future testFuture() async{
//   await Future.delayed(Duration(seconds: 2));
//
//   print('耗时任务结束');
//   for (var i = 0; i < 1000000000; i++) {}
//
// }
// void main(List<String> arguments) {
//   testFuture();
//   print('main');
// }

// Future testFuture() {
//   return Future(() {
//     for (var i = 0; i < 1000000000; i++) {}
//     print('futureDone');
//   });
// }
// Future testFuture() async{
//   await Future.delayed(Duration(seconds: 0));
//   for (var i = 0; i < 1000000000; i++) {}
//   print('futureDone');
// }
// main(List<String> args) {
//   print("main function start");
//   var b = getTest();
//   var b1 = getTest2();
//   b1.then((v) {
//     print(v);
//   });
//   b.then((v) {
//     print(v);
//   });
//   print("main function end");
// }
//
// Future<String> getTest() {
//   return Future<String>(() {
//     for (var i = 0; i < 1000000; i++) {
//       print(i);
//     }
//     return "getTest";
//   });
// }
//
// Future<String> getTest2() {
//   return Future<String>(() {
//     print("test");
//     return "getTest2";
//   });
// }
import 'dart:async';
//
// var total = 0;
// final iterations = 10000000;
//
// Future add() async {
//   print('starting add -> $total');
//
//   for (var i = 0; i < iterations; i++) {
//     total += 1;
//   }
//
//   print('ending add -> $total');
// }
//
// Future sub() async {
//   print('starting sub -> $total');
//
//   for (var i = 0; i < iterations; i++) {
//     total -= 1;
//   }
//
//   print('ending sub -> $total');
// }

void main(List<String> args) {

  maybeDoFoo().then((value) => print(value));
  maybeDoFoo().then((value) => print(value));
}
// test();
// print("4");
// Future test()async{
//   print("1");
//  await print("2");
//  print("3");
// }
// bool mayDoFoo = true;
// dynamic maybeDoFoo() {
//   if (mayDoFoo) return _doFoo();
//   return("Can't do foo!");
// }
// int _doFoo() {
//   mayDoFoo = false;
//   var result = 1;
//   mayDoFoo = true;
//   return result;
// }
bool mayDoFoo = true;
Future maybeDoFoo() async{
  // await Future.delayed(Duration(seconds: 0));
  if (mayDoFoo) return _doFoo();
  return("Can't do foo!");
}
Future _doFoo() async{
  // await Future.delayed(Duration(seconds: 0));
  mayDoFoo = false;
  await Future.delayed(Duration(seconds: 5));
  var result = 1;
  mayDoFoo = true;
  return result;
}
