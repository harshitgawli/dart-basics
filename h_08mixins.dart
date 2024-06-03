void main() {
  Pussy snowBell = Pussy();
  snowBell.fn();
  print("SnowBell ${snowBell.jumping}");
  snowBell.fn2();
}

mixin jump {
  //mixins are code that is used with classes this does not create parent child relationship
  String jumping = "I am jumping";
  bool isEatenFood = false;
}

class Cat with jump {
  void fn() {
    print(jumping);
  }
}

class Pussy extends Cat {
  void fn2() {
    print("Is cat has eatten food :$isEatenFood");
  }
}

/* skipped topics 
1 sealed class
  isme humko switch case ke ander sari sub  types of sealed class ko 
  add karna zaruri ni hai prr abstract class me sare types hona compulsory hai
  ex 


void main() {
  Animal animal = Cow();

  switch (animal) {
    case Cow():
      print("cow");
      break;
    case Human():
      print("Human");
      break;
    case Rat():
      print("Rat");
      break;
    default:
      print("nothing");
  }
}

sealed class Animal {}

class Human implements Animal {}

class Rat implements Animal {}

class Cow extends Animal {}

2 final class
3 base class
*/
