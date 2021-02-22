// // 导入isolate包
// import 'dart:isolate';
//
// void main() async {
//   // 创建一个ReceivePort用于接收消息
//   var recv = ReceivePort();
//   // await Isolate.spawn(subPortTask, recv.sendPort);
//   // // String result = "11";
//   // String result = await recv.first;
//   // // 创建一个Isolate，泛型参数为SendPort，入口函数为subTask
//   // // subTask入口函数的参数为SendPort类型，因此spawn第二个参数，传入recv的sendPort对象。
//   // print("12112$result");
//   // Isolate.spawn(subTask, result??"1234");
//
//   Isolate(recv.sendPort);
// }
//
// // Isolate入口函数定义，接收一个SendPort对象作为参数
// void subPortTask(SendPort port) async{
//   // 使用SendPort发送一条字符串消息
//   await port.send("123456");
//   print("执行了");
//
// }
//
// void subTask(String message) {
//   print("执行了");
//   print(message);
//   print("接受到的数据$message");
// }
// import 'dart:async';
// import 'dart:io';
// import 'dart:isolate';
//
// Isolate isolate;
//
// main() {
//   print("running dart program");
//   createNewIsolate();
//
// }
//
// void createNewIsolate() {
//   ReceivePort receivePort = ReceivePort();
//   Isolate.spawn(isolateMain, receivePort.sendPort)
//       .then((_isolate) {
//     isolate = _isolate;
//     print('isolate: $isolate');
//     receivePort.listen((messages) {
//       print('new message from ISOLATE $messages');
//     });
//   });
//
// }
//
// void isolateMain(SendPort sendPort) {
//   int i = 0;
//   Timer.periodic(new Duration(seconds: 2), (Timer t) {
//
//     if(i == 5) exit(0);
//     i += 1;
//
//     sendPort.send('RANDOM STRING:$i');
//   });
// }
// import 'dart:async';
// import 'dart:isolate';
//
// main() async {
//   var receivePort = new ReceivePort();
//   final isolate = await Isolate.spawn(echo, receivePort.sendPort,paused: true);
//   await isolate.resume(receivePort.sendPort);
//   // The 'echo' isolate sends it's SendPort as the first message
//   var sendPort = await receivePort.first;
//
//   var msg = await sendReceive(sendPort, "foo");
//   print('received $msg');
//   msg = await sendReceive(sendPort, "bar");
//   print('received $msg');
// }
//
// // the entry point for the isolate
// echo(SendPort sendPort) async {
//   // Open the ReceivePort for incoming messages.
//   var port = new ReceivePort();
//
//   // Notify any other isolates what port this isolate listens to.
//   sendPort.send(port.sendPort);
//
//   await for (var msg in port) {
//     var data = msg[0];
//     SendPort replyTo = msg[1];
//     replyTo.send(data);
//     if (data == "bar") port.close();
//   }
// }
//
// /// sends a message on a port, receives the response,
// /// and returns the message
// Future sendReceive(SendPort port, msg) {
//   ReceivePort response = new ReceivePort();
//   port.send([msg, response.sendPort]);
//   return response.first;
// }
import 'dart:async';
import 'dart:io';
import 'dart:isolate';

// void main() async {
//   print("Starting isolate");
//   Isolate isolate;
//   ReceivePort receivePort = ReceivePort();
//
//   isolate = await Isolate.spawn(run, receivePort.sendPort,paused: true);
//   print("pausing");
//   // Capability cap = isolate.pause(isolate.pauseCapability);
//   sleep(Duration(seconds: 5));
//   print("Resuming");
//   isolate.resume(isolate.pauseCapability);
// }
//
// void run(SendPort sendPort) {
//   sleep(Duration(seconds: 2));`
//   print("Woke up, 1");
//   sleep(Duration(seconds: 2));
//   print("Woke up, 2");
//   sleep(Duration(seconds: 2));
//   print("Woke up, 3");
//   sleep(Duration(seconds: 2));
//   print("Woke up, 4");
//   sleep(Duration(seconds: 2));
//   print("Woke up, 5");
// }
// Isolate isolate;
//
// void main() async {
//   ReceivePort receivePort = ReceivePort();
//   isolate = await Isolate.spawn(isolateFunc, "message");
//   isolate.kill(priority: 1);
//   receivePort.listen((message) { });
//   StreamController<int>().stream.listen((event) { });
//
//   receivePort.sendPort.send(message);
//   isolate.pause(isolate.pauseCapability);
//   isolate.resume(isolate.pauseCapability);
// }
// void main() {
//   Isolate.spawn(isolateFunc, "message").then((value) {
//     isolate = value;
//   });
// }

// isolateFunc(message) {}
// 导入isolate包

void main() async {
  // 创建一个ReceivePort用于接收消息
  ReceivePort recv = ReceivePort();

  // 创建一个Isolate，泛型参数为SendPort，入口函数为subTask
  // subTask入口函数的参数为SendPort类型，因此spawn第二个参数，传入recv的sendPort对象。
  // Isolate.spawn<ReceivePort>(subTask, recv);
  // Isolate.spawn<ReceivePort>(subTask2, recv);
  var a  = {"recv":recv};
  Isolate.spawn(subTask,a);
}
void subTask(message){
  print(message);
}
// // Isolate入口函数定义，接收一个SendPort对象作为参数
// void subTask( ReceivePort port) {
//   port.listen((message) {
//     print(message);
//   });
// }
//
// void subTask2( ReceivePort port) {
//   // 使用SendPort发送一条字符串消息
//   port.sendPort.send("subTask2 Result.");
// }
