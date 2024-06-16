void main() {
  // list can contains many same values but set do not
  final newOne = StudentList("Tanisha", 65);
  List<StudentList> students = [
    newOne,
    StudentList("Harshit gawli", 82),
    StudentList("Hemant", 81),
    StudentList("Somyaa", 26),
    newOne,
    StudentList("Raksha", 57),
    newOne
  ];

  // find student having marks less than 60
  // method 1
  // List<StudentList> failStudent = [];
  // for (final element in students) {
  //   if (element.marks < 60) {
  //     failStudent.add(element);
  //   }
  // }
  // print("Fail students are :$failStudent");

  Iterable<StudentList> studentsTable2 = [
    StudentList("Harshit nagar", 55),
    StudentList("Himanshu", 62),
    StudentList("Taniya", 54),
    StudentList("Garima", 87),
    newOne
  ];

  print(studentsTable2.isEmpty);
  final studentsTableIterable = studentsTable2;
  print(studentsTableIterable.runtimeType);
  // print(studentsTable2[2].name);  cant access because its object only created when used thai is iterables

  students.addAll(studentsTable2); // iterable can be add to list
  // print(students);

// method 2
  final failOnes = students.where((element) => element.marks < 60);
  print(failOnes);
  print(failOnes
      .runtimeType); // its type is where iterable not list to convert it to list we use tolist func
  print(failOnes.toList());

  final passedOnes = students.where((element) => element.marks > 60);
  print("Passes ones: ${passedOnes.toList()}");

  print("--------------------------------------------------------------------");
  // other properties
  print(students.length);
  print(students.reversed.toList()); // default return type iterable
  print(students.isNotEmpty);
  print(students.contains(newOne));

  // to convert list to set use toSet() it is in curly braeces and do not have repeated values

  print(students.toSet());
}

class StudentList {
  String name;
  int marks;
  StudentList(this.name, this.marks);
  void printName() {
    print("Name: $name");
  }

  @override
  String toString() => "Student name: $name";
}
