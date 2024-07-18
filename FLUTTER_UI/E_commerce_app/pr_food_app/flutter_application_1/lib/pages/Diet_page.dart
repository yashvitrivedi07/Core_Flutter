import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/pro_list.dart';
import 'Home_page.dart';
import 'Detail_page.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class DietPage extends StatefulWidget {
  const DietPage({super.key});

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Diet Page"),
        actions: [
           IconButton(onPressed: () {

            Navigator.of(context).popAndPushNamed('/');
          }, icon: Icon(Icons.home))
        ],

      ),
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: Diet_list.isEmpty
              ? const Center(
                  child: Text("NO DATA"),
                )

              //column

              : 
                  Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              
              // Image list
              SizedBox(
                height: size.height * 0.0800,
              ),
              Column(
                children: Diet_list
                    .map((e) => SizedBox(
                          height: size.height * .4,
                          width: size.width * .70,
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(blurRadius: 5, color: Colors.orange)
                                ],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: SizedBox(
                                      height: size.height * .3,
                                      width: size.width * .2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {});
                                              
                                              Navigator.of(context).pushNamed('detail_page',arguments: e);
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: Text(
                                            e['name'],
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: Text(
                                            "CALORIES : ${e['caloriesPerServing'].toString()}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: Text(
                                            "CUISINE : ${e['cuisine'].toString()}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20, top: 10),
                                          child: RatingBarIndicator(
                                            rating: e['rating'],
                                            itemBuilder: (context, index) =>
                                                Icon(
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
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
                  
                ),
    );
  }
}
