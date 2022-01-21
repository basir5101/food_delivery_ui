import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFE5c5E5)),
    );
  }
}

