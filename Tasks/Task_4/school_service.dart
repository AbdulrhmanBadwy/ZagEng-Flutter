import 'person.dart';
import 'student.dart';
import 'teacher.dart';

class SchoolService {
  void printPersonData(Person person) {
    if (person is Student) {
      print('this is a student');
      person.printInfo();
    } else if (person is Teacher) {
      print('this is a teacher');
      person.printInfo(); 
    }
  }
}
