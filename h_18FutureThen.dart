void main(List<String> args) {
// in this we use "then" keyword work as async but not need to make main function async
  display2().then((value) => print(value));
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
  return Future.delayed(Duration(seconds: 5), () {
    return "Bye Bye Harshit";
  });
}
