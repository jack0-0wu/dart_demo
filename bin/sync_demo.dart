//Iterable<int> naturalsTo(int n) sync* {
//  int k = 0;
//  while (k < n) yield k++;
//}
//
//void main() {
//  Iterable<int> sequence = naturalsTo(5);
//
//  print("Starting...");
//
//  for (int value in sequence) {
//    print(value);
//  }
//  print("DONE");
//}

// void main() {
//   for (int i in numbersDownFrom(3)) {
//     print('$i');
//   }
// }
//
// Iterable<int> numbersDownFrom(int n) sync* {
//   if (n != 0) {
//     yield n;
//     yield* numbersDownFrom(n - 1);
//   }
// }
Stream<int> naturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}
void main() async{
  Stream<int> sequence = naturalsTo(5);

  print("Starting...");

  await for (int value in sequence) {
    print(value);
  }
  print("DONE");
}