import 'dart:io';

void main() {
  MobileThings benx = Vehicle();// dont use vehicle methods
  print(benx.isEngineOn);
  (benx as Vehicle).accelerate();// to use it we use :"as" to change object type

  benx.startEngine();
  print(benx.isEngineOn);
}

class MobileThings {
  int speed = 1;
  bool isEngineOn = false;

  void startEngine() {
    isEngineOn = true;
  }
}

class Vehicle implements MobileThings {
  @override
  int speed = 10;
  @override   // if we don't overide all members and menber function then throgh error when we use implements
  bool isEngineOn = false;
  @override
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
