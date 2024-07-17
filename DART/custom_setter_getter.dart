import 'dart:io';

import 'class.dart';

void main()
{
    CAR c = CAR();

    stdout.write ("CAR name : ");
    String name = stdin.readLineSync()??"0";
    stdout.write ("CAR color : ");
    String color = stdin.readLineSync()??"0";
    stdout.write("CAR year : ");
    int year = int.parse(stdin.readLineSync()??"0");

    

    c.Set_color = color;
    c.Set_name = name;
    c.Set_year = year;

    c.get_data;
    }