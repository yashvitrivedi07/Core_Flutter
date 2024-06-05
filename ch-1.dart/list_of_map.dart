import 'dart:io';
void main()
{
  stdout.write("Enter no. of students : ");
  int? Size = int.parse(stdin.readLineSync()!);

 
  List<Map<String, dynamic>> Students = List.generate(Size, (index) 
  {
    stdout.write("Enter id of student ${index + 1} :");
    int ? id = int.parse(stdin.readLineSync()!);
    
    stdout.write("Enter name for student ${index + 1}: ");
    String? name = stdin.readLineSync();
    
    stdout.write("Enter age for student ${index + 1}: ");
    int? age = int.parse(stdin.readLineSync()!);

  }];

  Students.forEach((elements))
  {
    element.forEach((key , value))
    {
      print("$key : $value");
    });

  });
    



//iList<String>.generate(1000,(counter) => "Item $counter");