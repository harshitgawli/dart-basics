void main() {
  Animals animal1 = Carnivor();
  animal1.eat();
  animal1.sound();
  animal1.sleep();

  Animals animal2 = Herbivor();
  animal2.eat();
  animal2.sound();
  animal2.sleep();

  Animals animal3 = Noctornal();
  animal3.eat();
  animal3.sound();
  animal3.sleep();
}

abstract class Animals {
  late String name;

  void eat();
  void sound();
  void sleep();
}

class Carnivor implements Animals {
  @override
  String name = "Lion";

  void eat() {
    print("$name eat Flesh and Meat");
  }

  void sound() {
    print("$name will roar");
  }

  void sleep() {
    print("$name will sleep whenever it wants");
  }
}

class Herbivor implements Animals {
  @override
  String name = "Cow";

  void eat() {
    print("$name eat grass");
  }

  void sound() {
    print("$name will mooo..");
  }

  void sleep() {
    print("$name will sleep at night");
  }
}

class Noctornal implements Animals {
  @override
  String name = "bats";

  void eat() {
    print("$name eat smaller animals");
  }

  void sound() {
    print("$name will produce ultra sonic sound");
  }

  void sleep() {
    print("$name will sleep  at morning");
  }
}
