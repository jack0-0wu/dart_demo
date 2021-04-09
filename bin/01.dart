// Dart教程——【01】重要概念和变量
void main() {
  //示例1
  // int? a;
  // print(a);

  //示例2.1
  // var nullableButNotNullInt;
  // int x = nullableButNotNullInt!;
  // print(x);

  //示例2.2
  // var nullableButNotNullInt;
  // int x = nullableButNotNullInt;
  // print(x);

  //示例3
  // var test1 = Test();
  // var test2 = Test();
  // var a = test1;
  // var b  = a;
  // print(identical(b,test1));
  // print(identical(b,test2));
  // test1._num = 10;
  // print(b._num);

  //示例4
  // var test = Test();
  // changeValue(test);
  // print(test._num);

  //示例5
  // int lineCount;
  //
  // if (true) {
  //   lineCount = 1;
  // } else {
  //   lineCount = 0;
  // }
  //
  // print(lineCount);

  //示例6
  // test = 'Freida!';
  // print(test);

  //示例7
  // final name = 'Bob'; // final修饰的变量可以没有类型注解
  // final String nickname = 'Bobby';
  // name = 'Alice';

  //示例8
  // const num = 1000000;
  // const atm = 1.5 * num;
  //
  // var foo = const [];
  // final bar = const [];
  // const baz = []; //等同于const []
  //
  // foo = [1, 2, 3]; //是const []
  //
  // baz = [ 42 ]; //错误：无法为常量变量分配值。
  //
  // const Object i = 3; // 一个静态的object对象
  // const list = [i as int]; // 类型转换
  // const map = {if (i is int) i: "int"}; // 集合里面会讲这种用法
  // const set = {if (list is List<int>) ...list}; // 集合里面会讲这种用法

  //示例9.1
  // const a = [1, 2];
  // const b = [1, 2];
  // print(identical(a, b));

  //示例9.1
  // var a = [1, 2];
  // var b = [1, 2];
  // print(identical(a, b));

  //示例10
  // var a = A(1, 2);
  //
  // var a = const A(1, 2);
}

//示例3
// class Test {
//   int _num = 0;
// }

//示例4
// void changeValue(Test data) {
//   print(data._num);
//   data._num = 10;
// }

//示例6
// late String test;

//示例10
// class A {
//   final a, b;
//
//   const A(this.a, this.b);
// }
