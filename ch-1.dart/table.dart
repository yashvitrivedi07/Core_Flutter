import 'dart:io';
void main()
{
      print("Hello world");
    
      int n=5;

      for(int i=1; i<=10; i++)
      {
           print("$n $i ${i*n}");
      }

      print ("Enter your name : ");
      String? Name = stdin.readLineSync(); 
      print ("Here's the name : $Name");

      print("Enter your age : ");
       int? age = int.parse(stdin.readLineSync()!);

      stdout.write("Enter your Name : ");

      String? name = stdin.readLineSync();

      print ("$name");


      print("Age : $age");

}