import 'package:flutter/material.dart';

class ViewMoreButton extends StatefulWidget {
  const ViewMoreButton({Key? key}) : super(key: key);

  @override
  _ViewMoreButtonState createState() => _ViewMoreButtonState();
}

class _ViewMoreButtonState extends State<ViewMoreButton> {
  @override
  Widget build(BuildContext context) {
    return   const Text('View More', style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 18, color: Color.fromARGB(255, 125, 54, 100)));

  }
}
