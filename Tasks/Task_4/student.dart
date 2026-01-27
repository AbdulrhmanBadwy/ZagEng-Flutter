import 'person.dart';

class Student extends Person {
  int id;
  List<int>? grades = [];
  Student(super.name, this.id, {super.Phone, this.grades});

  double CalculateAverage() {
    double Average = 0;
    double sum = 0;
    int cnt = 0;

    if (grades == null)
      return 0;
    else {
      for (int grade in grades!) {
        sum += grade;
        cnt++;
      }
      Average = sum / cnt;
      return Average;
    }
  }

  @override
  void printInfo() {
    super.printInfo();
    print('Student Id: $id');
    print('Average Grade: ${CalculateAverage()}'); 
  }
}
