void main(List<String> args) {
  Map<String, int> marks = {"Harshit": 91, "Jaya": 75, "Krishna": 45};

  marks["Disha"] = 82;
  marks["Harshit"] = 94;

  print(marks);
  print(marks["Harshit"]);
  marks.addAll({"Abhijeet": 98, "Abhilasha": 83});
  marks.remove("Disha");
  print(marks);

  // acces each key value pair
  // method 1
  // for (var i = 0; i < marks.length; i++) {
  //   print("${marks.keys.toList()[i]} : ${marks.values.toList()[i]}");
  // }

  // method 2
  marks.forEach((key, val) {
    print("$key : $val");
  });
}
