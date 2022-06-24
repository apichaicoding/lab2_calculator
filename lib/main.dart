import 'package:flutter/material.dart';
import 'package:lab2_calculator/page/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static String title = 'Lab2 Calculator';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: HomwPage(
          title: title,
        ));
  }
}
