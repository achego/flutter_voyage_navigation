class Student {
  final String name;
  final int age;

  const Student({required this.name, required this.age});
}

Student student1 = Student(name: 'Emerie', age: 28);
Student student2 = Student(name: 'Basit', age: 22);

class MainClass {
  static List<Student> studentList = [student1, student2];
// late List<Student> adjustedList = [];

  static List<Student> addItem(List<Student> list, Student student) {
    list.add(student);
    List<Student> adjustedList = list;
    return adjustedList;
  }

  static List<Student> removeItem(List<Student> list, Student student) {
    list.remove(student);
    List<Student> adjustedList = list;
    return adjustedList;
  }

  static void main() {
    removeItem(studentList, student2);
    print(studentList);
  }
}

void main() {
  MainClass.main();
}
