void main(List<String> args) {
  final animalOtter = Animals("Otter");
  List<Animals> AnimalList = [
    Animals("Tiger"),
    Animals("Elephant"),
    animalOtter,
    Animals("Dog"),
    Animals("Ranbir kapoor")
  ];
  print(AnimalList);
  AnimalList.add(Animals("Wolf")); // add new item at last

  AnimalList.insert(3, Animals("Panthor")); // add new item at given index

  print(AnimalList);
  AnimalList.removeAt(3);
  AnimalList.remove(animalOtter);
  AnimalList.remove(AnimalList[0]);

  print(AnimalList);

  List<Animals> AnimalListNew = [
    Animals("Tiger"),
    Animals("Panthor"),
    animalOtter
  ];
  print(AnimalListNew);
  AnimalListNew.removeLast();
  print(AnimalListNew);

  AnimalList.insertAll(0, AnimalListNew);
  print(AnimalList);

  AnimalList.addAll([Animals("Bear"), Animals("Boars")]);
  print(AnimalList);

  AnimalListNew.clear();
  print(AnimalListNew.isEmpty);
}

class Animals {
  String name;
  Animals(this.name);

  @override
  String toString() => "Name of animal is $name\n";
}
