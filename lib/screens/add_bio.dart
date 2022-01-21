import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/heading_text.dart';
import 'package:food_delivery_app/custom_widgets/input_field.dart';
import 'package:food_delivery_app/custom_widgets/paragraph_text.dart';
import 'package:food_delivery_app/custom_widgets/theme_button.dart';
import 'package:food_delivery_app/screens/add_payment_method.dart';

class AddBioData extends StatelessWidget {
  const AddBioData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            HeadingText(heading: 'Fill in your bio to get started'),
            ParagraphText(paragraph: "This data will be displayed in your account profile for security"),
            InputField(hintText: 'First Name', prefixIcon: Icons.person),
            InputField(hintText: 'Last Name', prefixIcon: Icons.person_add_alt_1),
            InputField(hintText: 'Mobile Number', prefixIcon: Icons.phone),
            ThemeButton(btnText: "Next", route: AddPaymentMethod())
          ],
        ),
      ),
    );
  }
}
