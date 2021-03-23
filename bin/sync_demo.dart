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

Stream<int> numbersDownFrom(int n) async* {
  if (n > 2) {
    yield n;
    yield* numbersDownFrom(n - 1);
  }
}

main() async {
  await for (int i in numbersDownFrom(5)) {
    print('$i');
  }
}