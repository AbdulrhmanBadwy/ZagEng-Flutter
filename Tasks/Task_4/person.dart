class Person {
  String name;
  String? Phone;

  Person(this.name, {this.Phone });

  void printInfo() {
    print('Name: $name');
    print('Phone: ${Phone ?? 'No Phone'}'); 
  }
}
