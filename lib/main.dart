import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),

        darkTheme: ThemeData.dark(), // standard dark theme
        themeMode: ThemeMode.system
    );
  }
}


