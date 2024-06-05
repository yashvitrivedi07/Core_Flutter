//list

import 'dart:io';

void main()
{
  List l = [10 , 20 , 3.14 , "hello "];

   stdout.write("Here's the list : $l\n");

   l[0] = 20;

print("Here's the list : $l\n\n");

stdout.write("Enter list size : ");
int? Size = int.parse(stdin.readLineSync()!);

stdout.write ("Size = $Size");

List l1 = List.generate(Size, (index));

}