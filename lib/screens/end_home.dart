import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/heading_text.dart';
import 'package:food_delivery_app/custom_widgets/theme_button.dart';
import 'package:food_delivery_app/screens/dashboard.dart';
import 'package:food_delivery_app/screens/home.dart';

class EndHome extends StatelessWidget {
  const EndHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const ThemeButton(btnText: 'Try Order', route: Dashboard()),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/congrats.png'),
            const HeadingText(heading: "Your Profile Is Ready To Use"),

          ],
        ),

    );
  }
}
