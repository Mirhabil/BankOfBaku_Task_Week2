import 'dart:math';

void main() {

  Random random=Random();
  for (var student in studentsList) {
    student.courseNames = courseNames.toList()[random.nextInt(courseNames.length)];
  }

  var list = studentsList.where((student) => student.grade > 70);

  list.toList().forEach((student) {
    print("${student.name} -> ${student.courseNames}");
  });
}

class Student {
  String name;
  double grade;
  String? courseNames;

  Student(this.name, this.grade);
}

List<Student> studentsList = [
  Student("Student 1", 60),
  Student("Student 2", 80),
  Student("Student 3", 90),
  Student("Student 4", 70),
  Student("Student 5", 20),
  Student("Student 6", 30),
  Student("Student 7", 50),
  Student("Student 8", 60),
];

Set<String> courseNames = {
  "Object-Oriented-Programming",
  "C#",
  "DSA",
  "C++",
  "C",
};
