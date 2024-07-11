void main(List<String> args) async {
  counter().listen((val) {
    print(val);
  }, onDone: () => print("Timer stopped!!!"));
  print("Countdown for 5 sec start now");
}

Stream<int> counter() async* {
  for (var i = 5; i > 0; i--) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}
