import 'dart:io';

void main()
{
    stdout.write("Enter size of list : ");
    int? Size = int.parse(stdin.readLineSync()!);

    List a = List.generate(Size, (int index)=> 0);

   for(int i=0; i<Size; i++)
   {
      stdout.write("${i+1} : ");
      a[i] = int.parse(stdin.readLineSync()!);
   }    
// added
   a.add(6);
  //removed
   a.remove(a[0]);
  //update
   a[2] = 10;

   print("$a");
}