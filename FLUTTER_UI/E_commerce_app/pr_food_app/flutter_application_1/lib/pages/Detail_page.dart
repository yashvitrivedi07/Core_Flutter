import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/utils/pro_list.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
         Map<String, dynamic> recipe = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

  

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail page"),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      height: size.height * .3,
                      width: size.width * .3,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.orange,
                                    blurRadius: 3,
                                  )
                                ]),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  recipe['image'],
                                ))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .3,
                    width: size.width * .60,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.orange,
                              blurRadius: 3,
                            ),
                          ]),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  recipe['name'],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  "Difficulty  : ${recipe['difficulty']}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  "Cuisine  : ${recipe['cuisine']}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  "Prepare Time  : ${recipe['prepTimeMinutes']}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 10),
                                child: Text(
                                  "Cook Time  : ${recipe['cookTimeMinutes']}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 10),
                                child: RatingBarIndicator(
                                  rating: recipe['rating'],
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 20.0,
                                  direction: Axis.horizontal,
                                ),
                              )
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                                height: size.height * 0.0600,
                                width: size.width * 0.0600,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.orange,
                                          blurRadius: 3,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: InkWell(
                                    onTap: () {
                                      
                                    if(!Diet_list.contains(recipe))
                                    {
                                      setState(() {
                                       Diet_list.add(recipe);
                                      });
                                      
                                    }
                                  },
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text("Add to Diet"))),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: SizedBox(
                      height: size.height * .4,
                      width: size.width * .40,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.orange,
                                  blurRadius: 3,
                                )
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10, top: 15),
                                  child: Text(
                                    "INGREDIENTS : ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  )),
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: SizedBox(
                      height: size.height * .4,
                      width: size.width * .40,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.orange,
                                  blurRadius: 3,
                                ),
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10, top: 15),
                                  child: Text(
                                    "INSTRUCTION : ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  )),
                            ],
                          )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
