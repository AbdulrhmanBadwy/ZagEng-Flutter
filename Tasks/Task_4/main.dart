import 'school_service.dart';
import 'student.dart';
import 'teacher.dart';

void main() {
  List<int>? grades = [40, 50, 30];
  Student student = Student('Abdulrhman', 1, grades: grades);

  Teacher teacher = Teacher('Badwy', 5000,500);

  print('Student Average: ${student.CalculateAverage()}');

  print('Teacher Salary: ${teacher.calculateSalary(bonus: 500)}');

  SchoolService schoolService = SchoolService();
  schoolService.printPersonData(student);
  schoolService.printPersonData(teacher); 
}
