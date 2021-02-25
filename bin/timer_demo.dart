import 'dart:async';

import 'dart:io';

void main() {
  //
  // Timer timer = Timer.periodic(Duration(seconds: 2), (timer) {
  //   print("timer");
  //   print("timer.isActive:${timer.isActive}");
  //   print("timer.tick:${timer.tick}");
  // });
  Timer timer = Timer.periodic(Duration(seconds: 2), (timer) {
    print("timer run");
  });
  Timer(Duration(seconds: 5), () {
    print("timer.cancel");
    timer.cancel();
  });
  Timer.run(() {
    print("timer.run");
  });
  // print("timer.tick:${timer.tick}");
  // Timer(Duration(seconds: 5), () {
  //   print("timer.tick:${timer.tick}");
  // });
  // Timer(Duration(seconds: 10), () {
  //   print("CANCEL");
  //   timer.cancel();
  //   print("timer.isActive:${timer.isActive}");
  //   print("timer.tick:${timer.tick}");
  //   return 1;
  // });
  // Timer(Duration(seconds: 1), () {
  //   print("方法被执行了");
  // });
  // Timer.periodic(Duration(seconds: 2), (timer) {
  //   print(timer.runtimeType);
  // });
  // print("同步代码");
  // sleep(Duration(seconds: 1));
  // print(timer.isActive);
  // Timer.run(() { print("1");});
  // print(2);
}
