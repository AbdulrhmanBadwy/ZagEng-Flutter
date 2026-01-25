bool IsIdExit(List<Map<String, dynamic>> students, int id) {
  for (var student in students) {
    if (student['id'] == id) return true;
  }
  return false;
}

void AddStudent({
  required List<Map<String, dynamic>> students,
  required int id,
  required String name,
}) {
  if (IsIdExit(students, id)) {
    return;
  }
  students.add({'id': id, 'name': name, 'grades': <int>{}});
}

void AddGradeToStudent({
  required List<Map<String, dynamic>> students,
  required int id,
  required int grade,
}) {
  for (var student in students) {
    if (student['id'] == id && IsIdExit(students, id)) {
      (student['grades'] as Set<int>).add(grade);
      break;
    }
  }
}

void ViewStudent(Map<String, dynamic> student) {
  print(
    'Id ${student['id']} | Name: ${student['name']} | Grades : ${student['grades']}',
  );
}

void ViewAllStudents(List<Map<String, dynamic>> students) {
  for (var student in students) {
    ViewStudent(student);
  }
}

double GradesAverages(Set<int> grades) {
  double sum = 0;
  if (grades.isEmpty) return 0;

  for (int grade in grades) {
    sum += grade;
  }

  return (sum) / grades.length;
}

void main() {
  int id = 1;
  int grade = 80;
  String name = 'Badwy';

  List<Map<String, dynamic>> students = [];

  List<int> actions = [1, 1, 2, 2, 3, 4, 5];

  int index = 0;
  while (true) {
    switch (actions[index]) {
      case 1:
        if (!IsIdExit(students, id)) print('Student Added: $name');
        AddStudent(students: students, id: id, name: name);
      case 2:
        AddGradeToStudent(students: students, id: id, grade: grade);
        print('Grade Added : $grade');
        grade += 10;
      case 3:
        ViewAllStudents(students);
      case 4:
        double Average = GradesAverages(students[0]['grades']);
        print('Average: $Average');
      case 5:
        print('Program Finished');
        return; 
    }
    index++;
  }
}
