import 'dart:io';

class CAR{
  late String _name;
  late int _year;
  late String _color;

  void set Set_name(String _name) => this._name = _name;
  void set Set_year(int _year) => this._year = _year;
  void set Set_color(String _color) => this._color = _color;
  
  get get_data{
    print ("NAME : $_name\nCOLOR : $_color\nYEAR : $_year");
  }



}


class A{

  late int a;

  A({required this.a});

  set setA(a) => this.a = a;
  get getA => this.a;

}

class B extends A{

  late int b;

  B({required super.a , required this.b});

  set setB(b) => this.b =b;
  get getB => this.b;
}

class C extends B{

  late int c;

  C({required super.a, required super.b , required this.c});

  set setC(c) => this.c =c;
  get getC => this.c;

  void sum()
  {
       print("Sum : ${super.a + super.b + this.c}");
  }
}