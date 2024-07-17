import 'dart:io';

class CAR{

late String name;
late String color;
late int year;
late String type;

Setdata({required String name , required String color , required int year , required String type})
{
   
    this.name = name;
    this.color = color;
    this.year = year;
    this.type = type;

}

print_data()
{
  print("\n\nNAME : ${this.name}");
  print("COLOR : ${this.color}");
  print("YEAR : ${this.year}");
  print("TYPE : ${this.type}");
}
}

void main()
{
   stdout.write("ENter no. of cars : ");
   int n = int.parse(stdin.readLineSync()??"0");

   List<CAR> cars = List.generate(n, (index) {
    CAR c = CAR();
    print("CAR : ${index + 1}/$n");

     stdout.write("Enter car name : ");
    String name = stdin.readLineSync() ?? "Unknown";

     stdout.write("Enter car color : ");
    String color = stdin.readLineSync() ?? "Unknown";

    stdout.write("Enter car year : ");
    int year = int.parse(stdin.readLineSync()??"Unknown");

    stdout.write("Enter car type (second hand / new ): ");
    String type = stdin.readLineSync() ?? "Unknown";

   c.Setdata(name: name, color: color, year: year, type: type);
   return c;
   },
   );

   cars.forEach((element){
    element.print_data();
   });

}