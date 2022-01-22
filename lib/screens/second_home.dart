import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/heading_text.dart';
import 'package:food_delivery_app/custom_widgets/paragraph_text.dart';
import 'package:food_delivery_app/custom_widgets/theme_button.dart';
import 'package:food_delivery_app/screens/login.dart';
import 'package:food_delivery_app/screens/signup.dart';

class SecondHome extends StatelessWidget {
  const SecondHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Image.asset('assets/second_home.png'),
              const HeadingText(heading: 'Food Ninja is Where Your Comfort Food Lives'),
              const ParagraphText(paragraph: 'Enjoy a fast and smooth food delivery at your doorstep'),
              const ThemeButton(btnText: "Next", route: Signup()),
            ],
          ),
        ),
      ),
    );
  }
}

