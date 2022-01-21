import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/heading_text.dart';
import 'package:food_delivery_app/custom_widgets/paragraph_text.dart';
import 'package:food_delivery_app/custom_widgets/theme_button.dart';
import 'package:food_delivery_app/screens/second_home.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Image.asset(
                'assets/Illustartion.png',
              ),
              HeadingText(heading: 'Find your  Comfort Food here'),
              const ParagraphText(
                paragraph:
                    'Here You Can find a chef or dish for every taste and color. Enjoy!',
              ),
              const ThemeButton(
                btnText: 'Next',
                route: SecondHome(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
