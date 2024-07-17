import 'model_class.dart';

void main()
{
    Map data = {
      'name' : "Koenigsegg",
      'color' : "White",
      'year' : 2024,

    };

Car c = Car.fromMap(data: data);

print("Name : ${c.get_name}");
print("color : ${c.get_color}");
print("year : ${c.get_year}");
      
}