import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/heading_text.dart';

class EndHome extends StatelessWidget {
  const EndHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            HeadingText(heading: "Your Profile Is Ready To Use")
          ],
        ),
      ),
    );
  }
}
