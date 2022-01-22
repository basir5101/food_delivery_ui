import 'package:flutter/material.dart';
import 'package:food_delivery_app/utills/theme_colors.dart';

class MenuCard extends StatefulWidget {
  final String imagePath;
  final String menu;
  final String price;
  final String restaurant;

  const MenuCard(
      {Key? key,
      required this.imagePath,
      required this.price,
      required this.menu,
      required this.restaurant})
      : super(key: key);

  @override
  _MenuCardState createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
      width: width - 30,
      child: Row(
          children: [
            Image.asset(widget.imagePath, width: width/5.5,),
            SizedBox(
              width: width / 1.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    widget.menu,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.restaurant,
                    style: const TextStyle(color: Colors.grey, fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
                child: Text(
              widget.price,
              style: TextStyle(color: ThemeColors().success, fontSize: 24,),
            ))
          ],
      ),
    ),
        ));
  }
}
