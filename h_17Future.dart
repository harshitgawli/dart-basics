void main(List<String> args) async {
  // future (promises)
  // used in async programming when we fetch data from network it teakes some
  // time so we make other satements to  run in meantime
  // in sync progmming all statements run sequentially and create delay for other statements
  final str = await display2();
  print(str);
  print("hello");
  display();

  print("greetings");
  print("dart future example");
  print("using async and awaits");
}

Future<void> display() async {
  Future.delayed(Duration(seconds: 2), () => print("hello Harshit"));
}

Future<String> display2() async {
  Future.delayed(Duration(seconds: 5), () {
    print("Bye Bye Harshit");
  });
  return "";
}
