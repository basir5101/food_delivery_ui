import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
 final String heading;

 const HeadingText({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Text(
          heading,
          style: const TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
