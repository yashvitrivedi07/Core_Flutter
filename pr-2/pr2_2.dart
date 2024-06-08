import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "        🛍️ List of Fruits",
          style: TextStyle(color: Colors.white, fontSize: 30),
          textAlign: TextAlign.center, //
        ),
        backgroundColor: Colors.teal,
      ),
      body: Center(
          child: Text.rich(TextSpan(children: [
        TextSpan(children: [
          TextSpan(
            text: "🍎 Apple\n",
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "🍇 Grapes\n",
            style: TextStyle(
                color: Colors.purple,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "🍒 Cherry\n",
            style: TextStyle(
                color: Colors.purple,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "🍓 Strawberry\n",
            style: TextStyle(
                color: Colors.pink, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "🥭 Mango\n",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "🍍 Pineapple\n",
            style: TextStyle(
                color: Colors.green, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "🍋 Lemon\n",
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "🍉 Watermelon\n",
            style: TextStyle(
                color: Colors.green, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "🥥 Coconut\n",
            style: TextStyle(
                color: Colors.brown, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ])
      ]))),
    ),
  ));
}
