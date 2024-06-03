import "dart:io";

void main() {
  // var details = Student();
  // // all access tuple print(Student());
  // print(details);
  // // individual access
  // print("NAME:" + details.$1);
  // stdout.write("ROLLNO:");
  // print(details.$2);
  // stdout.write("AGE:");
  // print(details.$3);
  // print("GENDER:" + details.$4);

  // another way to use record

  (String, int, int, String) Hindi = Student();
  var gen = "Bhai";
  if (Hindi.$4 == "Female") {
    gen = "Behen";
  }
  print("$gen ki umar hai " + (Hindi.$3).toString() + " saal");

  var person = voterDetails();
  print("Here is voter details.....");
  print("Name:" + person.name);
  print("Age: ${person.age} years");
  print("Adult:${person.isAdult}");

//   var name = "Harshit Gawli";
//   var age = 21;
//   var greeting = "Have a nice day";

//   printDetails(age: age, name: name, greet: greeting);
}

(String, int, int, String) Student() {
  stdout.write("enter your name:");
  String name = stdin.readLineSync().toString();
  stdout.write("enter your rollno:");
  int rollno = int.parse(stdin.readLineSync().toString());
  stdout.write("enter your age:");
  int age = int.parse(stdin.readLineSync().toString());
  stdout.write("enter your gender:");
  String gender = stdin.readLineSync().toString();

  return (name, rollno, age, gender);
}

// named arguments

// void printDetails(
//     {required String name, required int age, required String greet}) {
//   print("Hello $name \nYour age is $age \n$greet");
// }

// another example of record with named data types

({String name, int age, bool isAdult}) voterDetails() {
  stdout.write("Enter your name:");
  String naam = stdin.readLineSync().toString();
  stdout.write("Enter your age:");
  int yrs = int.parse(stdin.readLineSync().toString());
  bool voter = (yrs >= 18) ? true : false;

  return (age: yrs, name: naam, isAdult: voter);
}
