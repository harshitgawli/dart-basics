import "dart:io";

void main() {
  //Cookie tigerChunk = Cookie(shape: "Square", size: 14);
  final tigerChunk = Cookie(shape: "Square", size: 14);
  print(tigerChunk.shape);
  print(tigerChunk.size);

  // tigerChunk.height = 10; getter cannot set value only read
  tigerChunk.setHeight = 18; //set height using setter
  print(tigerChunk.height);
}

class Cookie {
  // String? shape;
  // int? size;
  final String shape;
  final int size;

  // private variable are created by using _ at stating
  int _height = 25;
  //this is a private variable which is not accessible outside this class also called encapsulation
  int _width = 10;

  //Getter in dart
  int get height => _height;

  // setters in dart
  set setHeight(int h) {
    _height = h;
  }

  // method
  int CalculateSize() {
    return _height * _width;
  }

  void modifyHeight(int newHeight) {
    _height = newHeight;
  }

  Cookie({required this.shape, required this.size}) {
    print("Cookie constructor called...");
    baking();
  }

  void baking() {
    stdout.write(
        "Your Cookie of shape $shape and size $size cm is started baking..\n");
  }
}
