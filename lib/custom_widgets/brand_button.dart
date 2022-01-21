import 'package:flutter/material.dart';

class BrandButton extends StatefulWidget {
  final String btnText;
  final IconData brandIcon;
  const BrandButton({Key? key, required this.btnText, required this.brandIcon}) : super(key: key);

  @override
  _BrandButtonState createState() => _BrandButtonState();
}

class _BrandButtonState extends State<BrandButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, right: 10, left: 10),
      child: Container(

        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),

            gradient: LinearGradient(
                colors: [
                  Colors.white70,
                  Colors.white30
                ]
            )
        ),
        child: ElevatedButton.icon(
          icon: Icon(widget.brandIcon, color: Colors.green, size: 30,),
          onPressed: () {
           // Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget.route,));
          },

          style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onSurface: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10, top: 10),
              textStyle: const TextStyle(
                  fontSize: 18
              ),

          ), label: Text(widget.btnText, style: TextStyle(
          color: Colors.black87

        ),),
        ),
      ),
    );
  }
}
