import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/heading_text.dart';
import 'package:food_delivery_app/custom_widgets/paragraph_text.dart';
import 'package:food_delivery_app/custom_widgets/payment_card.dart';
import 'package:food_delivery_app/custom_widgets/theme_button.dart';
import 'package:food_delivery_app/screens/add_location.dart';

class AddPaymentMethod extends StatelessWidget {
  const AddPaymentMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeadingText(heading: 'Payment Method'),
            ParagraphText(paragraph: "This data will be displayed in your account profile for security"),
            PaymentCard(payment: "Bkash",paymentIcon: Icons.payments_outlined,),
            PaymentCard(payment: "Rocket",paymentIcon: Icons.payment,),
            PaymentCard(payment: "Payoneer",paymentIcon: Icons.payment,),
            PaymentCard(payment: "Paypal",paymentIcon: Icons.payment,),
            PaymentCard(payment: "Visa",paymentIcon: Icons.payment,),
            ThemeButton(btnText: 'Next', route: AddLocation())
          ],
        ),
      ),
    );
  }
}
