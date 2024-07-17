
import 'dart:io';
void main()
{
     stdout.write("Enter Size of Elements : ");
     int? Size = int.parse(stdin.readLineSync()!);

     List <int >l = List.generate(Size, (int index) => 0);

     for(int i=0; i<Size ; i++)
     {
          stdout.write("${i + 1} : ");
          l[i] = int.parse(stdin.readLineSync()!);
     }
       int largest = l[0];

     for(int i=0; i<Size; i++)
     {
        if(l[i]> largest)
        {
                largest = l[i];

        }
     }
print("Largest Elements : $largest");
     

}
