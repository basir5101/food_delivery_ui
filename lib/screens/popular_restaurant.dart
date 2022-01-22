import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/restaurant_card.dart';
import 'package:food_delivery_app/custom_widgets/third_heading.dart';

class PopularRestaurant extends StatefulWidget {
  const PopularRestaurant({Key? key}) : super(key: key);

  @override
  _PopularRestaurantState createState() => _PopularRestaurantState();
}

class _PopularRestaurantState extends State<PopularRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ThirdHeading(heading: 'Popular Restaurant',),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: const [
              RestaurantCard(
                heading: 'Vegan Resto',
                imagePath: 'assets/rest1.png',
                time: '12 Mins',
              ),
              RestaurantCard(
                heading: 'Healthy Food',
                imagePath: 'assets/rest2.png',
                time: '8 Mins',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: const [
              RestaurantCard(
                heading: 'Vegan Resto',
                imagePath: 'assets/rest1.png',
                time: '12 Mins',
              ),
              RestaurantCard(
                heading: 'Healthy Food',
                imagePath: 'assets/rest2.png',
                time: '8 Mins',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: const [
              RestaurantCard(
                heading: 'Vegan Resto',
                imagePath: 'assets/rest1.png',
                time: '12 Mins',
              ),
              RestaurantCard(
                heading: 'Healthy Food',
                imagePath: 'assets/rest2.png',
                time: '8 Mins',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
