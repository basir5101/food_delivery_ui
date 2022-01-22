import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  final String payment;
  final IconData paymentIcon;
  const PaymentCard({Key? key,required this.payment, required this.paymentIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width/1.1,
      height: 80,
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            crossAxisAlignment: WrapCrossAlignment.center,
            children:  [Icon(paymentIcon, size: 30, color: Colors.green,), Text(payment, style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),)],
          ),
        ),
      ),
    );
  }
}
