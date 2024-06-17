void main(List<String> args) {
  Map<String, int> marks = {"Maths": 45, "English": 31, "CS": 46};

  List<Map<String, int>> marksList = [
    {"Maths": 11, "English": 36, "CS": 16},
    {"Maths": 32, "English": 42, "CS": 21},
    {"Maths": 49, "English": 37, "CS": 29},
    marks
  ];

  // to access all maps
  marksList.map((e) {
    print(e);
  }).toList();

  //ro access key values of each map only
  int i = 1;
  marksList.map((e) {
    print("\nMAP NO $i");
    i++;
    e.forEach((key, value) {
      print("$key : $value");
    });
  }).toList();
}
