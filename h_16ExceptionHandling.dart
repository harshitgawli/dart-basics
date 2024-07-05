void main(List<String> args) {
  print(10 ~/ 3);
  // ~/ => truncate division 10~/3 = 3.333333 => 3 ignore value after point

  try {
    print(10 ~/ 0);
  } on UnsupportedError catch (e) {
    // "on" used for specific exception like unsupported error, arrayoutof bound etc
    print(e);
    print("number divide by zero");
  }
  // throws error lets catch it print(10 ~/ 0);
  try {
    print(10 / -0);
  } catch (e) {
    print(e);
  } finally {
    print("finallay run always no matter exception arise or not");
    // mainly used for garbage handling and free up disk space
  }
}
