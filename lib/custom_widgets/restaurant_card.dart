import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/third_heading.dart';

class RestaurantCard extends StatefulWidget {
  final String imagePath;
  final String heading;
  final String time;
  const RestaurantCard({Key? key, required this.imagePath, required this.heading, required this.time}) : super(key: key);

  @override
  _RestaurantCardState createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  @override
  Widget build(BuildContext context) {
    return Card(

      child: Container(
        width: MediaQuery.of(context).size.width/2.3,
        height: 180,
        child: Center(
          child: Column(
            children: [
              Image.asset(widget.imagePath, alignment: Alignment.center,),
              ThirdHeading(heading: widget.heading,),
              Text(widget.time)
            ],
          ),
        ),
      )
    );
  }
}
