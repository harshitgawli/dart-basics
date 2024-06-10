void main(List<String> args) {
  List<Fruits> fruitList = [
    Fruits("Mango"),
    Fruits("Orange"),
    Fruits("Kiwi"),
    Fruits("Pineapple")
  ];
  print(fruitList);

  fruitList.add(Fruits("Guawa"));
  print(fruitList[fruitList.length - 1].runtimeType);
}

class Fruits {
  String name;
  Fruits(this.name);

  @override
  String toString() => "Fruit : ${this.name}";
}
