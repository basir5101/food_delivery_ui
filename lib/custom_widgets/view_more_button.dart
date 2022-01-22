import 'package:flutter/material.dart';

class ViewMoreButton extends StatefulWidget {
  const ViewMoreButton({Key? key}) : super(key: key);

  @override
  _ViewMoreButtonState createState() => _ViewMoreButtonState();
}

class _ViewMoreButtonState extends State<ViewMoreButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          onSurface: Colors.transparent,
          shadowColor: Colors.transparent,

      ),
        onPressed: (){}, child: const Text('View More', style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromARGB(255, 125, 54, 100))),
    );
  }
}
