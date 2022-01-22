import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/image_above_text.dart';
import 'package:food_delivery_app/custom_widgets/menu_card.dart';
import 'package:food_delivery_app/custom_widgets/restaurant_card.dart';
import 'package:food_delivery_app/custom_widgets/view_more_button.dart';
import 'package:food_delivery_app/screens/popular_menu.dart';
import 'package:food_delivery_app/screens/popular_restaurant.dart';

class DashboardMenu extends StatefulWidget {
  const DashboardMenu({Key? key}) : super(key: key);

  @override
  _DashboardMenuState createState() => _DashboardMenuState();
}

class _DashboardMenuState extends State<DashboardMenu> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return _selectedIndex == 0 ? Column(
      children: [
        const ImageAboveText(),
        ListTile(
            title: const Text(
              'Nearest Restaurant',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            trailing: InkWell(
                onTap: (){
                  _onItemTapped(1);
                },
                child: const ViewMoreButton())
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
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
              RestaurantCard(
                heading: 'Vegan Resto',
                imagePath: 'assets/rest1.png',
                time: '12 Mins',
              ),
              RestaurantCard(
                heading: 'Healthy Food',
                imagePath: 'assets/rest2.png',
                time: '8 Mins',
              )
            ],
          ),
        ),
        ListTile(
            title: const Text(
              'Popular Menu',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            trailing: InkWell(
                onTap: () {
                  _onItemTapped(2);
                },
                child: const ViewMoreButton())),
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
    ) : _selectedIndex == 1 ? const PopularRestaurant() : _selectedIndex == 2 ? const PopularMenu() : const Text('Not found');
  }
}
