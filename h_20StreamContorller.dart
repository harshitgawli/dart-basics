import 'dart:async';

void main(List<String> args) {
  counter();
}

void counter() {
  final controller = StreamController();
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.addError("error caused!!");
  controller.sink.close();
  controller.stream.listen((val) {
    print(val);
  }, onError: (err) {
    print(err);
  });
  Stream.periodic(Duration(seconds: 1), (val) {
    print(val);
  });
  controller.close();
}
