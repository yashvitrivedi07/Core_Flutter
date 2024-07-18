import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Detail_page.dart';
import 'package:flutter_application_1/pages/Diet_page.dart';
import 'package:flutter_application_1/pages/Home_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      routes: {
        '/': (context) => HomePage(),
        'detail_page': (context) => DetailPage(),
        'diet_page': (context) => DietPage()
      },
    );
  }
}
