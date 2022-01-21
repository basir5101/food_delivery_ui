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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              HeadingText(heading: 'Set Your Location '),
              ParagraphText(paragraph: "This data will be displayed in your account profile for security"),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Icon(Icons.my_location),
                    ThirdHeading(heading: 'Your Location')
                    //Text('Your Location')
                  ],
                ),
              ),
              BrandButton(btnText: "Set Location", brandIcon: Icons.location_on),
              SizedBox(
                height: 100,
              ),
              ThemeButton(btnText: 'Next', route: EndHome())
            ],
          ),
        ),
      ),
    );
  }
}
