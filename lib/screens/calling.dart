import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/second_heading.dart';
import 'package:food_delivery_app/custom_widgets/third_heading.dart';
import 'package:food_delivery_app/screens/thanks_meal.dart';
import 'package:food_delivery_app/utills/theme_colors.dart';

class Dialling extends StatefulWidget {
  const Dialling({Key? key}) : super(key: key);

  @override
  _DiallingState createState() => _DiallingState();
}

class _DiallingState extends State<Dialling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
                          DecorationImage(image: AssetImage('assets/abdul.png'), fit: BoxFit.fill),
                    ),
                  ),
                ),
                const SecondHeading(heading: 'Abdul Basir'),
                const Text('Ringing...' , style:  TextStyle (
                  color: Colors.grey,
                  fontSize: 20
                ),)
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThanksMeal(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: ThemeColors().primary2,
                        borderRadius: BorderRadius.all(Radius.circular(200))),
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Icon(
                        Icons.volume_up_sharp,
                        color: ThemeColors().primary,
                        size: 50,
                      ),
                    )),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThanksMeal(),
                    ));
              },
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.all(Radius.circular(200))),
                    child: const Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Icon(
                        Icons.cancel,
                        color: Colors.white70,
                        size: 50,
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
