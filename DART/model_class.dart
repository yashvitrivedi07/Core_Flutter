import 'dart:io';


class Car{

  final int year;
  final String name;
  final String color;


  Car({required this.color , required this.name , required this.year});

  factory Car.fromMap({required Map data})
  {
      return Car(color: data['color'], name: data['name'], year: data['year']);
  }

  String get get_name => this.name;
  String get get_color => this.color;
  int get get_year => this.year;
  

}