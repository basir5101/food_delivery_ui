import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/menu_card.dart';
import 'package:food_delivery_app/custom_widgets/second_heading.dart';

class PopularMenu extends StatefulWidget {
  const PopularMenu({Key? key}) : super(key: key);

  @override
  _PopularMenuState createState() => _PopularMenuState();
}

class _PopularMenuState extends State<PopularMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SecondHeading(heading: 'Popular Menu'),
        const MenuCard(
          imagePath: 'assets/menu1.png',
          price: "7 \$",
          menu: 'Herbal Pancake',
          restaurant: 'Warung Herbal',
        ),
        const MenuCard(
          imagePath: 'assets/menu2.png',
          price: "5 \$",
          menu: 'Fruit Salad',
          restaurant: 'Wijie Resto',
        ),
        const MenuCard(
          imagePath: 'assets/menu3.png',
          price: "15 \$",
          menu: 'Green Noddle',
          restaurant: 'Noodle Home',
        ),
        const MenuCard(
          imagePath: 'assets/menu1.png',
          price: "7 \$",
          menu: 'Herbal Pancake',
          restaurant: 'Warung Herbal',
        ),
        const MenuCard(
          imagePath: 'assets/menu2.png',
          price: "5 \$",
          menu: 'Fruit Salad',
          restaurant: 'Wijie Resto',
        ),
        const MenuCard(
          imagePath: 'assets/menu3.png',
          price: "15 \$",
          menu: 'Green Noddle',
          restaurant: 'Noodle Home',
        ),
      ],
    );
  }
}
