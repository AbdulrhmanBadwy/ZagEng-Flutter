import 'person.dart';

class Teacher extends Person {
  double salary;
  double bonus;

  Teacher(super.name, this.salary, this.bonus, {super.Phone});

  double calculateSalary({double bonus = 0}) {
    return salary + bonus;
  }

  @override
  void printInfo() {
    super.printInfo();
    print('Salary: $salary');
    print('Bounds: $bonus');
    print('Salary With bouns = ${calculateSalary(bonus: bonus)}');
  }
}
