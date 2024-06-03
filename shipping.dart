import 'dart:io';

void main() {
  stdout.write("Enter your Destination:");
  String? Destination = stdin.readLineSync();
  stdout.write("Enter package weight:");
  double weight = double.parse(stdin.readLineSync().toString());
  double cost;
  switch (Destination) {
    case "XYZ":
      cost = 5 * weight;
      print("The cost of package is \$ $cost");
      break;
    case "ABC":
      cost = 7 * weight;
      print("The cost of package is \$ $cost");
      break;
    case "PQR":
      cost = 10 * weight;
      print("The cost of package is \$ $cost");
      break;
    default:
      print("You have entered a wrong destination...");
  }
}
