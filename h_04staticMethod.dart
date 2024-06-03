void main() {
  // for static variables and method we dont need to create objects
  // also by creating objects we do not get access to static methods and variables
  print(Constants.greeting);
  print(Constants.salary);

  Constants.display();
}

class Constants {
  static String greeting = "Hello coder ! you can do it ...";
  static int salary = 200000;

  static void display() {
    print("$greeting");
    print("Your salary is $salary");
  }
}
