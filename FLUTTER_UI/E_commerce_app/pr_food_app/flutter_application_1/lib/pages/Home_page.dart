import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Detail_page.dart';
import 'package:flutter_application_1/tile/category_Tile.dart';
import 'package:flutter_application_1/utils/pro_list.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_application_1/extension/size.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selected = "Difficulty";
  RangeValues sliderValue = RangeValues(0, 50000);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('diet_page');
              },
              icon: Icon(Icons.food_bank))
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: size.height * .4,
                width: size.width * .80,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 5, color: Colors.orange)
                      ],
                    ),
                    child: Row(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              // Add content here
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    DropdownButton<String>(
                      value: selected,
                      hint: Text("Selected"),
                      onChanged: (String? value) {
                        setState(() {
                          selected = value ?? "Difficulty";
                        });
                      },
                      items: [
                        DropdownMenuItem(
                          value: "Difficulty",
                          child: Text("Difficulty"),
                        ),
                        ...difficulty.map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        )).toList(),
                      ],
                    ),
                    SizedBox(width: 20),
                    Visibility(
                      visible: selected != "Difficulty",
                      child: ActionChip(
                        label: Text("Clear"),
                        avatar: Icon(Icons.close),
                        onPressed: () {
                          setState(() {
                            selected = "Difficulty";
                            sliderValue = RangeValues(0, 50000);
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "From\n${sliderValue.start.toInt()}",
                            textAlign: TextAlign.center,
                          ),
                          Expanded(
                            child: RangeSlider(
                              values: sliderValue,
                              onChanged: (RangeValues value) {
                                setState(() {
                                  sliderValue = value;
                                });
                              },
                              max: 50000,
                              min: 0,
                              divisions: 50000,
                            ),
                          ),
                          Text(
                            "End\n${sliderValue.end.toInt()}",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              selected == "Difficulty"
                  ? Column(
                      children: [
                        category_Tile(size: size, context: context),
                        ...difficulty.map((e) => category_Tile(
                          size: size,
                          context: context,
                          Difficulty: e,
                        )).toList(),
                      ],
                    )
                  : category_Tile(
                      size: size,
                      context: context,
                      Difficulty: selected,
                      start: sliderValue.start,
                      end: sliderValue.end,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
