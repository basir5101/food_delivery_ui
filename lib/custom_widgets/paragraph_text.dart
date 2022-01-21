import 'package:flutter/material.dart';

class ParagraphText extends StatelessWidget {
  final String paragraph;

  const ParagraphText({Key? key, required this.paragraph}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 15, bottom: 15),
      child: Text(
        paragraph,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 18
        ),
      ),
    );
  }
}
