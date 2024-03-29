class Student {
  String name;
  int age;
  int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printInfo() {
    print("Student Information:");
    print("Name: $name");
    print("Age: $age");
    print("Grade Level: $gradeLevel");
    print("-------------------------------");
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printInfo() {
    print("Teacher Information:");
    print("Name: $name");
    print("Age: $age");
    print("Subject: $subject");
    print("-------------------------------");
  }
}

class School {
  void createAndPrint() {
    Student student = Student("Victor", 15, 10);

    Teacher teacher = Teacher("Mr. Kimani", 35, "Math");

    student.printInfo();
    teacher.printInfo();
  }
}

void main() {
  School school = School();

  school.createAndPrint();
}
