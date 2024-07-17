import 'dart:io';
void main()
{
  stdout.write("Enter no. of elements : ");
  int? Size = int.parse(stdin.readLineSync()!);

  print("$Size");

 List l = List.generate(Size, (int index) => 0);

  for(int i = 0; i< Size ; i++)
  {
       stdout.write("Enter ${ i + 1} : ");
       l[i] = int.parse(stdin.readLineSync()!);
  }

   print("Nagative Elements : ");
  for(int i=0; i<Size; i++)
  {
        if (l[i] <= 0) 
        {
          print("${l[i]}");
        }
  }


}