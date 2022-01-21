import 'package:flutter/material.dart';

class SecondHeading extends StatelessWidget {
  final String heading;
  const SecondHeading({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Text(
          heading,
          style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
