void main(List<String> args) {
  final Student1 = Student("Harshit gawli", StdDept.cse);
  final Student2 = Student("Harshit nagar", StdDept.mech);
  final Student3 = Student("hemant kamliya", StdDept.eee);
  final Student4 = Student("dikshika bhawsar", StdDept.civil);
  final Student5 = Student("Riya Pandey", StdDept.cse);

  List<Student> Studentlist = [
    Student1,
    Student2,
    Student3,
    Student4,
    Student5
  ];

  Studentlist.forEach((element) {
    element.details();
  });
}

enum StdDept {
  cse(24),
  civil(22),
  mech(21),
  eee(20);

  final int credit;
  const StdDept(this.credit);
}

class Student {
  final String name;
  final StdDept dept;

  Student(this.name, this.dept);

  void details() {
    switch (dept) {
      case StdDept.cse:
        print("${this.name}:Computer Science department");
        print("Credits associated : ${dept.credit}");
        break;
      case StdDept.eee:
        print("${this.name}:Electronics and Electrical department");
        print("Credits associated : ${dept.credit}");
        break;
      case StdDept.civil:
        print("${this.name}:Civil department");
        print("Credits associated : ${dept.credit}");
        break;
      case StdDept.mech:
        print("${this.name}:Mechanical department");
        print("Credits associated : ${dept.credit}");
        break;
      default:
        print("${this.name}:Invalid input");
    }
  }
}
