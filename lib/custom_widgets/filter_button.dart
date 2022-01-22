import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home.dart';
import 'package:food_delivery_app/utills/theme_colors.dart';

class FilterButton extends StatefulWidget {
  final String btnText;
  const FilterButton({Key? key, required this.btnText}) : super(key: key);

  @override
  _FilterButtonState createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        setState(() {
          _selected = !_selected;
        });
      },
      child: Container(
        margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: ThemeColors().warning
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(widget.btnText, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              letterSpacing: 1.1,
              color: _selected ? Colors.grey : ThemeColors().success,
            ),),
          ),
        ),
    );

  }
}
