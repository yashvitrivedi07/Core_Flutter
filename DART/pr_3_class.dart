import 'dart:io';
import 'dart:math';

import 'tp_.dart';

//q-1
/*1. WAP to take a list using named parameter and return sum of all elements of list.
    */
class Data {
  int sum = 0;

  void set_data() {
    stdout.write("Enter Size of Elements : ");
    int? Size = int.parse(stdin.readLineSync()!);

    List<int> l = List.generate(Size, (int index) => 0);

    for (int i = 0; i < Size; i++) {
      stdout.write("${i + 1} : ");
      l[i] = int.parse(stdin.readLineSync()!);
    }

    for (int i = 0; i < Size; i++) {
      sum += l[i];
    }
  }

  void get_data() {
    print("Sum : $sum");
  }
}

/*
2. WAP to simulate Super Market Billing system in which...
Create multiple customers through array of object.

-> When each customer is entered (instantiated) note their cust_id, cust_name, cust_contact

-> Create a menu driven system which gives the customer verities of categories and their products.

-> Whenever user selects any product simulate the feature to add product in cust_cart which will 
contain 4 parameters for each product pro_id, pro_name, pro_qty, pro_price.

-> Apply billing and discount criteria's on the final amount after calculating each customer's 
   number of product's price.
                                 10% disc. on 500 - 1500
                                 20% disc. on 1500 - 3500
                                 25% disc. on 3500 - 6500
                                 30% disc. for above all.

-> add searching functionalities by cust_id which gives cust_id, cust_name, cust_contact,
 list of products, their price and quantity and include final amount and discount amount.
*/

class Product {
  List<Map> product = [
    {
      'pro_id': 71,
      'pro_name': "coffee",
      'pro_price': 100.00,
      'category': "Beverage",
    },
    {
      'pro_id': 72,
      'pro_name': "tea",
      'pro_price': 50.00,
      'category': "Beverage",
    },
    {
      'pro_id': 73,
      'pro_name': "juice",
      'pro_price': 50.00,
      'category': "Beverage",
    },
    {
      'pro_id': 74,
      'pro_name': "soda",
      'pro_price': 45.00,
      'category': "Beverage",
    },
    {
      'pro_id': 75,
      'pro_name': "Bread",
      'pro_price': 30.00,
      'category': "Bakery",
    },
    {
      'pro_id': 76,
      'pro_name': "Cookies",
      'pro_price': 70.00,
      'category': "Bakery",
    },
    {
      'pro_id': 77,
      'pro_name': "Sandwich loaves",
      'pro_price': 120.00,
      'category': "Bakery",
    },
    {
      'pro_id': 78,
      'pro_name': "bagels",
      'pro_price': 79.00,
      'category': "Bakery",
    },
    {
      'pro_id': 79,
      'pro_name': "Dinner roll",
      'pro_price': 73.00,
      'category': "Bakery",
    },
    {
      'pro_id': 80,
      'pro_name': "Vegetable soup",
      'pro_price': 50.00,
      'category': "Canned/Jarred Goods",
    },
    {
      'pro_id': 81,
      'pro_name': "Spaghetti sauce",
      'pro_price': 70.00,
      'category': "Canned/Jarred Goods",
    },
    {
      'pro_id': 82,
      'pro_name': "Ketchup  (850 gm)",
      'pro_price': 120.00,
      'category': "Canned/Jarred Goods",
    },
    {
      'pro_id': 83,
      'pro_name': "Knorr Classic Vegetable Soup - Sweet Corn",
      'pro_price': 55.00,
      'category': "Canned/Jarred Goods",
    },
    {
      'pro_id': 84,
      'pro_name': "Cheese",
      'pro_price': 56.00,
      'category': "DAIRY",
    },
    {
      'pro_id': 85,
      'pro_name': "Milk  (500 ml)",
      'pro_price': 36.00,
      'category': "DAIRY",
    },
    {
      'pro_id': 86,
      'pro_name': "Yogurt",
      'pro_price': 35.00,
      'category': "DAIRY",
    },
    {
      'pro_id': 87,
      'pro_name': "Butter",
      'pro_price': 56.00,
      'category': "DAIRY",
    },
    {
      'pro_id': 88,
      'pro_name': "flour  (5 kg)",
      'pro_price': 249.00,
      'category': "Dry/Baking Goods",
    },
    {
      'pro_id': 89,
      'pro_name': "sugar  (5 kg)",
      'pro_price': 200.00,
      'category': "Dry/Baking Goods",
    },
    {
      'pro_id': 90,
      'pro_name': "pasta  (250 gm)",
      'pro_price': 20.00,
      'category': "Dry/Baking Goods",
    },
    {
      'pro_id': 91,
      'pro_name': "cereals",
      'pro_price': 271.00,
      'category': "Dry/Baking Goods",
    },
    {
      'pro_id': 92,
      'pro_name': "Waffles",
      'pro_price': 150.00,
      'category': "Frozen Foods",
    },
    {
      'pro_id': 93,
      'pro_name': "ice cream",
      'pro_price': 50.00,
      'category': "Frozen Foods",
    },
    {
      'pro_id': 94,
      'pro_name': "Safal Frozen - Mixed Vegetables, 1 Kg Pouch",
      'pro_price': 127.00,
      'category': "Frozen Foods",
    },
    {
      'pro_id': 95,
      'pro_name': "Frozen Green Peas, 2x1 kg",
      'pro_price': 408.00,
      'category': "Frozen Foods",
    },
    {
      'pro_id': 96,
      'pro_name': "Frozen Green Peas, 2x1 kg",
      'pro_price': 408.00,
      'category': "Frozen Foods",
    },
    {
      'pro_id': 97,
      'pro_name': "Mr. Muscle Kitchen Cleaner Spray, 450 ml",
      'pro_price': 139.00,
      'category': "Cleaners",
    },
    {
      'pro_id': 98,
      'pro_name': "bb home Toilet Cleaner - Original, 3 x 1 L Multipack",
      'pro_price': 289.00,
      'category': "Cleaners",
    },
    {
      'pro_id': 99,
      'pro_name': "Floor Cleaner Herbal",
      'pro_price': 557.00,
      'category': "Cleaners",
    },
    {
      'pro_id': 100,
      'pro_name': "paper towels",
      'pro_price': 250.00,
      'category': "Paper Goods",
    },
    {
      'pro_id': 101,
      'pro_name': "toilet paper",
      'pro_price': 199.00,
      'category': "Paper Goods",
    },
    {
      'pro_id': 102,
      'pro_name': "aluminum foil",
      'pro_price': 50.00,
      'category': "Paper Goods",
    },
    {
      'pro_id': 103,
      'pro_name': "sandwich bags",
      'pro_price': 100.00,
      'category': "Paper Goods",
    },
    {
      'pro_id': 104,
      'pro_name': "Specialist Skin Care Oil, 2x200 ml",
      'pro_price': 2288.00,
      'category': "Personal Care",
    },
    {
      'pro_id': 105,
      'pro_name': "Prakrta Vitamin E - Belly Butter, 85 g",
      'pro_price': 475.00,
      'category': "Personal Care",
    },
    {
      'pro_id': 106,
      'pro_name': "Bella Cotton Buds , 150 pcs Box",
      'pro_price': 99.00,
      'category': "Personal Care",
    },
    {
      'pro_id': 107,
      'pro_name': "Soulflower Aroma Oil - Soulgreen, 30 ml",
      'pro_price': 800.00,
      'category': "Personal Care",
    },
  ];
}

class Customer extends Product {
  int? cust_id;
  String? cust_name;
  int? cust_contact;
  double bill = 0.0;
  double total_bill = 0.0;
  List<dynamic> cust_cart = [];

  void print_DATA() {
    print("Enter 1  =  Beverage");
    print("Enter 2  =  Bakery");
    print("Enter 3  =  Canned/Jarred Goods");
    print("Enter 4  =  DAIRY");
    print("Enter 5  =  Dry/Baking Goods");
    print("Enter 6  =  Frozen Foods");
    print("Enter 7  =  Cleaners");
    print("Enter 8  =  Paper Goods");
    print("Enter 9  =  Personal Care");
    print("Enter your choice : ");
    int? choice = int.parse(stdin.readLineSync() ?? "0");

    switch (choice) {
      case 1:
        int i = 0;
        while (i <= 4) {
          var item = product[i];
          print(
              "Enter ${i + 1}  = Product ID: ${item['pro_id']}   , Name: ${item['pro_name']}  \n");
          i++;
          print("Enter your choice : ");
          int? Choice = int.parse(stdin.readLineSync() ?? "0");

          switch(Choice)
          {
            case 1:

                print("Enter quantity : ");
                int? quantity = int.parse(stdin.readLineSync()??"0");
                bill = (* quantity);
      
          }


        }
    }
  }
}
