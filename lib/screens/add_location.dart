import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/brand_button.dart';
import 'package:food_delivery_app/custom_widgets/heading_text.dart';
import 'package:food_delivery_app/custom_widgets/paragraph_text.dart';
import 'package:food_delivery_app/custom_widgets/theme_button.dart';
import 'package:food_delivery_app/custom_widgets/third_heading.dart';
import 'package:food_delivery_app/screens/end_home.dart';

class AddLocation extends StatelessWidget {
  const AddLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const ThemeButton(btnText: 'Next', route: EndHome()),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const HeadingText(heading: 'Set Your Location '),
              const ParagraphText(paragraph: "This data will be displayed in your account profile for security"),
              Padding(
                padding:  EdgeInsets.all(18.0),
                child: Row(
                  children: const [
                    Icon(Icons.my_location),
                    ThirdHeading(heading: 'Your Location')
                    //Text('Your Location')
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 10, left: 10),
              child: Container(

                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),

                    gradient: LinearGradient(
                        colors: [
                          Colors.white70,
                          Colors.white30
                        ]
                    )
                ),
                child: ElevatedButton.icon(
                  icon: Icon(Icons.location_on, color: Colors.green, size: 30,),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => EndHome(),));
                  },

                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onSurface: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10, top: 10),
                    textStyle: const TextStyle(
                        fontSize: 18
                    ),

                  ), label: Text('Set Location', style: TextStyle(
                    color: Colors.black87

                ),),
                ),
              ),
            ),
              const SizedBox(
                height: 100,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
