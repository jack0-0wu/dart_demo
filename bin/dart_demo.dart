import 'dart:async';

import 'package:dart_demo/dart_demo.dart' as dart_demo;

void main(List<String> arguments) {
  Future(() {
    for (var i = 0; i < 1000000000; i++) {}
    print('耗时任务结束');
    return '1';
  }).then((value) => print(value));
  testFutureVoid();
  print('main函数上的代码');
}

// Future<void> testFutureVoid() {
//   return Future(() {
//     for (var i = 0; i < 1000000000; i++) {}
//     print('耗时任务结束');
//   });
// }
Future<void> testFutureVoid() {
  return Future(() {});
}
