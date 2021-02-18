// 导入isolate包
import 'dart:isolate';

void main() async {
  // 创建一个ReceivePort用于接收消息
  var recv = ReceivePort();
  await Isolate.spawn(subPortTask, recv.sendPort);
  // String result = "11";
  String result = await recv.first;
  // 创建一个Isolate，泛型参数为SendPort，入口函数为subTask
  // subTask入口函数的参数为SendPort类型，因此spawn第二个参数，传入recv的sendPort对象。
  print("12112$result");
  Isolate.spawn(subTask, result??"1234");
}

// Isolate入口函数定义，接收一个SendPort对象作为参数
void subPortTask(SendPort port) async{
  // 使用SendPort发送一条字符串消息
  await port.send("123456");
  print("执行了");

}

void subTask(String message) {
  print("执行了");
  print(message);
  print("接受到的数据$message");
}
