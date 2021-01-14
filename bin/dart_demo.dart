import 'dart:async';

import 'package:dart_demo/dart_demo.dart' as dart_demo;

void main(List<String> arguments) {
  // Future(() {
  //   throw StateError('This is a Dart exception in Future.');
  // }).then((value) => print(value), onError: (dynamic e, StackTrace stack) => print(e));
  // Future(() {
  //   throw StateError('This is a Dart exception in Future.');
  // }).catchError((dynamic e, StackTrace stack) => print(e), test: (e) => true);
  // Future(() {
  // }).whenComplete(() => print(0));
  // Future(() {
  //   for (var i = 0; i < 10000000000; i++) {}
  //   print('延时');
  // }).timeout(Duration(microseconds: 1), onTimeout: () {
  //   print('超时了');
  //   return Future(() {
  //     for (var i = 0; i < 1000000000; i++) {}
  //     print('延时1');
  //   });
  // });

  Future<bool>(() {
    for (var i = 0; i < 10000000000; i++) {}
    return true;
  }).timeout(Duration(milliseconds: 2), onTimeout: () {
    print('0 timed out');
    return false;
  }).then((value) => print(value));

}

Future<bool> myTypedFuture(int id, int duration) async {
  await Future.delayed(Duration(seconds: duration));
  print('Delay complete for Future $id');
  return true;
}

Future runTimeout() async {
  await myTypedFuture(0, 10).timeout(Duration(seconds: 2), onTimeout: () {
    print('0 timed out');
    return false;
  });
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
