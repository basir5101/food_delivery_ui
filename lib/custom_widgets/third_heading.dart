import 'package:flutter/material.dart';

class ThirdHeading extends StatelessWidget {
  final String heading;
  const ThirdHeading({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Text(
          heading,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
