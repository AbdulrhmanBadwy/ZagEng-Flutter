// Null Safety

// void main() {
//   printName('Badwy', 10);
//   printName()
// }

// // required Parameter Postional
// void printName(String name, int age) {
//   print('name: $name');
//   print('age: $age');
// }

// double CalculateGrade({required int score , int fullMark = 100}){

//   return (score/fullMark)*100;
// }

// void main(){
//   print('${CalculateGrade(score: 75)}%');

// }

// OOP

// Class is contained all infomration on it
// if we had a rectangle with width and height and you want to get area

// Constractor is a Factory that is made the calss

// class Car {
//   String color = 'blue';
//   int yearOfMade = 2025;

//   void PrintInfo() {
//     print('Car Color : $color');
//     print('Car Year of Made: $yearOfMade');
//   }
// }

// void main() {
//   Car car = Car();
//   car.color = 'red';

//   car.PrintInfo();
// }
// class Student {
//   String Name;
//   int Age;

//   Student(this.Name, this.Age);
//   void printDetails() {
//     print('Name: $Name');
//     print('Age: $Age');
//   }
// }

// void main() {
//   Student s1 = Student('Abdulrhman', 20);
//   s1.printDetails();

//   Student s2 = Student('Badwy', 100);
//   s1.printDetails();
// }

// class Car {
//   String color = 'blue';
//   int yearOfMade = 2025;
//   Car();
//   Car.color(this.color);
//   Car.yearofMade(this.yearOfMade);
//   void PrintInfo() {
//     print('Car Color : $color');
//     print('Car Year of Made: $yearOfMade');
//   }
// }

// void main() {
//   List<Car> cars = [];
//   cars.add(Car());
//   cars.add(Car.color('Red'));
//   cars.add(Car.yearofMade(2023));

//   for (var car in cars) {
//     car.PrintInfo();
//   }
// }

// class Student {
//   String Name = 'Badwy';
//   int Age = 20;

//   Student();
//   Student.Name(this.Name);
//   Student.Age(this.Age);
//   Student.All(this.Name, this.Age);

//   void printDetails() {
//     print('Name: $Name');
//     print('Age: $Age');
//   }
// }

import 'emplyee.dart';
import 'manager.dart';


// void main() {
//   List<Student> students = [];

//   students.add(Student());
//   students.add(Student.Age(25));
//   students.add(Student.Name('Abdulrhman'));
//   students.add(Student.All('Omar', 30));

//   for (var student in students) {
//     student.printDetails();
//     print('--0-------0--------0--');
//   }
// }




void main() {
  Emplyee emplyee = Emplyee('Badwy', 9999999);
  emplyee.PrintInfo();

  print('--0-------0--------0--');

  Manager manager = Manager(999595, 'Abdulrhman', 999898989);
  manager.PrintInfo(); 
}
