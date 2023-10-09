import 'package:flutter/material.dart';
import 'homepage.dart';
import 'homecontroller.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(
        child: HomePage(),
      ),
    );
  }
}