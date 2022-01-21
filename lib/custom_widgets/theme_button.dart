import 'package:flutter/material.dart';


class ThemeButton extends StatefulWidget {
  final Widget route;
  final String btnText;
  const ThemeButton({Key? key, required this.btnText, required this.route}) : super(key: key);


  @override
  _ThemeButtonState createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.green.shade800
                ]
            )
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget.route,));
          },
          child: Text(widget.btnText),
          style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onSurface: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: const EdgeInsets.only(left: 54, right: 54, bottom: 20, top: 20),
              textStyle: const TextStyle(
                  fontSize: 18
              )
          ),
        ),
      ),
    );
  }
}
