void main() {
  List marks = [10, 11, 15, 19, 21, 32, "harshit", true]; // dynamic type
  print(marks);
  print(marks[5]);

  List<StudentList> students = [
    StudentList("Harshit gawli"),
    StudentList("Hemant"),
    StudentList("Somyaa"),
    StudentList("Raksha")
  ];

  print(students[0].name);
  print(students[2]);
  students[3].printName();
}

class StudentList {
  String name;
  StudentList(this.name);
  void printName() {
    print("Name: $name");
  }
}
