void PrintDetails({
  required String FirstName,
  required String LastName,
  required double Degree,
  required String Job,
}) {
  print('First Name is : $FirstName');
  print('Last Name Is: $LastName');
  print('Degree: $Degree');
  print('Job: $Job');
}

void main() {
  String FirstName = 'Abdulrhman';
  String LastName = 'Badwy';
  String Job = 'Student';
  double Degree = 99.99;

  PrintDetails(
    FirstName: FirstName,
    LastName: LastName,
    Degree: Degree,
    Job: Job,
  );
}
