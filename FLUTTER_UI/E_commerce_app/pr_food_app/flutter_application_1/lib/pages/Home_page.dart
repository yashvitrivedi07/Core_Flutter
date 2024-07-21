import 'package:flutter/material.dart';
import 'package:flutter_application_1/tile/category_Tile.dart';
import 'package:flutter_application_1/utils/pro_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selected = "All";
  RangeValues sliderValue = const RangeValues(0, 3000); // Initialize with const for safety

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"), // Use const for static widgets
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('diet_page');
            },
            icon: const Icon(Icons.food_bank),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.4,
              width: size.width * 0.80,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: const Text(
                    'Welcome to the Recipe App!',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.08),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  DropdownButton<String>(
                    value: selected,
                    hint: const Text("Select Difficulty"),
                    onChanged: (String? value) {
                      setState(() {
                        selected = value ?? "All";
                      });
                    },
                    items: [
                      DropdownMenuItem(
                        value: "All",
                        child: const Text("All"),
                      ),
                      ...difficulty.map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          )),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Visibility(
                    visible: selected != "All",
                    child: ActionChip(
                      label: const Text("Clear"),
                      avatar: const Icon(Icons.close_fullscreen_sharp),
                      onPressed: () {
                        setState(() {
                          selected = "All";
                          sliderValue = const RangeValues(0, 3000); // Reset slider values
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 20),
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
                                sliderValue = value; // Update slider value
                              });
                            },
                            max: 3000,
                            min: 0,
                            divisions: 3000,
                          ),
                        ),
                        Text(
                          "To\n${sliderValue.end.toInt()}",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            selected == "All"
                ? Column(
                    children: [
                      category_Tile(size: size, context: context),
                      ...difficulty.map((e) => category_Tile(
                            size: size,
                            context: context,
                            Difficulty: e,
                          )),
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
    );
  }
}
