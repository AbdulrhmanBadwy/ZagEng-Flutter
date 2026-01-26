import 'emplyee.dart';

class Manager extends Emplyee {
  double bouns;
  Manager(this.bouns, super.name, super.salary);
  @override
  void PrintInfo() {
    super.PrintInfo();
    print('Bouns: $bouns'); 
  }
}
