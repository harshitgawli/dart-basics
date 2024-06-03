import 'dart:io';

void main() {
  Car nano = Car();
  nano.noOfWheels();
  print(nano.isEngineOn);
  nano.startEngine();
  print(nano.speed);
  nano.accelerate();
  print(nano.speed);
  nano.startEngine();
  print(nano.isEngineOn);

  Truck eicher = Truck();
  eicher.noOfWheels();
  eicher.wheels = 8;
  eicher.noOfWheels();
  eicher.startEngine();
  eicher.accelerate();
}

class Vehicle {
  int speed = 10;
  bool isEngineOn = false;

  void startEngine() {
    if (isEngineOn == true) {
      print("Engine is already running");
      stdout.write("If you want to stop engine type 'off' :");
      var off = stdin.readLineSync().toString();
      isEngineOn = (off == "off") ? false : true;
      (isEngineOn == false)
          ? print("your engine is turned off..")
          : print("Invalid input");
    } else {
      isEngineOn = true;
      print("Your engine is started");
    }
  }

  void accelerate() {
    speed += 10;
    print("speed is increased to $speed km/h");
  }
}

class Car extends Vehicle {
  Car() {
    print("car constructor called");
    super.speed = 30;
  }

  int wheels = 4;

  void noOfWheels() {
    print("This vehicle has $wheels wheels");
  }
}

class Truck extends Vehicle {
  Truck() {
    print("Truck constructor called");
    super.speed = 15;
  }

  int wheels = 12;

  void noOfWheels() {
    print("This vehicle has $wheels wheels");
  }
}
