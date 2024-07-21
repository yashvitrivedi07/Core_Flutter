import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/utils/pro_list.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget category_Tile({
  required Size size,
  required BuildContext context,
  String Difficulty = "All",
  double start = 0,
  double end = 500000,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: allRecipies.where((e) =>
            (Difficulty == "All" || Difficulty == e['difficulty']) &&
            (e['caloriesPerServing'] >= start && e['caloriesPerServing'] <= end)
          ).map((e) => SizedBox(
                height: size.height * 0.4,
                width: size.width * 0.70,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 5, color: Colors.orange),
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: SizedBox(
                            height: size.height * 0.3,
                            width: size.width * 0.2,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                      'detail_page',
                                      arguments: e,
                                    );
                                  },
                                  child: Image.network(
                                    e['image'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  e['name'],
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "CALORIES : ${e['caloriesPerServing'].toString()}",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "CUISINE : ${e['cuisine'].toString()}",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 10),
                                child: RatingBarIndicator(
                                  rating: e['rating'],
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 20.0,
                                  direction: Axis.horizontal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ))
              .toList(),
        ),
      ),
    ],
  );
}
