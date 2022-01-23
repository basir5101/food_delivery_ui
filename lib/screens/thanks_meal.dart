import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/input_field.dart';
import 'package:food_delivery_app/custom_widgets/second_heading.dart';
import 'package:food_delivery_app/custom_widgets/theme_button.dart';
import 'package:food_delivery_app/screens/dashboard.dart';

class ThanksMeal extends StatefulWidget {
  const ThanksMeal({Key? key}) : super(key: key);

  @override
  _ThanksMealState createState() => _ThanksMealState();
}

class _ThanksMealState extends State<ThanksMeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:  [
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 48.0),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      image:
                      DecorationImage(image: AssetImage('assets/thanks.png'), fit: BoxFit.fill),
                    ),
                  ),
                ),
                const SecondHeading(heading: 'Thank You! Enjoy Your Meal'),
                const Text('Please rate your Food' , style:  TextStyle (
                    color: Colors.grey,
                    fontSize: 20
                ),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 88.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: InputField(prefixIcon: Icons.feedback_outlined, hintText: "Leave Feedback",),
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: ThemeButton(btnText: 'Submit', route: Dashboard(),),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ThemeButton(btnText: 'Skip', route: Dashboard(),),
          ),
        ],
      ),
    );
  }
}
