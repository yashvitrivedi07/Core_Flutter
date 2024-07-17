import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "              Red & White",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          textAlign: TextAlign.center, //
        ),
        backgroundColor: Colors.redAccent,
      ),

      //body

      body: Center(
          child: Text.rich(TextSpan(children: [
        TextSpan(
          text: "            G",
          style: TextStyle(color: Colors.green, fontSize: 30),
        ),
        TextSpan(
          text: "R",
          style: TextStyle(
              color: Colors.red, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: "APHICS\n",
          style: TextStyle(color: Colors.green, fontSize: 30),
        ),
        TextSpan(
          text: "     FLUTT",
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
        TextSpan(
          text: "E",
          style: TextStyle(
              color: Colors.red, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: "R\n",
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
        TextSpan(
          text: "         AN",
          style: TextStyle(color: Colors.green, fontSize: 30),
        ),
        TextSpan(
          text: "D",
          style: TextStyle(
              color: Colors.red, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: "ROID\n",
          style: TextStyle(color: Colors.green, fontSize: 30),
        ),
        TextSpan(
          text: "DESIGN",
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 30,
          ),
        ),
        TextSpan(
          text: " & ",
          style: TextStyle(
              color: Colors.red, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: "DEVELOP\n",
          style: TextStyle(color: Colors.yellow, fontSize: 30),
        ),
        TextSpan(
          text: "          W",
          style: TextStyle(
              color: Colors.red, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: "EB\n",
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
        TextSpan(
          text: "        FAS",
          style: TextStyle(color: Colors.yellowAccent, fontSize: 30),
        ),
        TextSpan(
          text: "H",
          style: TextStyle(
              color: Colors.red, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: "ION\n",
          style: TextStyle(color: Colors.yellowAccent, fontSize: 30),
        ),
        TextSpan(
          text: "  ANIMAT",
          style: TextStyle(color: Colors.teal, fontSize: 30),
        ),
        TextSpan(
          text: "I",
          style: TextStyle(
              color: Colors.red, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: "ON\n",
          style: TextStyle(color: Colors.teal, fontSize: 30),
        ),
        TextSpan(
          text: "             I",
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
        TextSpan(
          text: "T",
          style: TextStyle(
              color: Colors.red, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: "A-CS+\n",
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
        TextSpan(
          text: "      GAM",
          style: TextStyle(color: Colors.yellow, fontSize: 30),
        ),
        TextSpan(
          text: "E",
          style: TextStyle(
              color: Colors.red, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ]))),
      backgroundColor: Colors.black,
    ),
  ));
}
