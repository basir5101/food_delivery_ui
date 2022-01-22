

import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/brand_button.dart';
import 'package:food_delivery_app/custom_widgets/heading_text.dart';
import 'package:food_delivery_app/custom_widgets/input_field.dart';
import 'package:food_delivery_app/custom_widgets/menu_card.dart';
import 'package:food_delivery_app/custom_widgets/restaurant_card.dart';
import 'package:food_delivery_app/custom_widgets/third_heading.dart';
import 'package:food_delivery_app/custom_widgets/view_more_button.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: const HeadingText(heading: 'Find Your Favorite Food'),
                ),
                const Icon(Icons.notifications_active, color: Colors.green),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: const InputField(
                    prefixIcon: Icons.search,
                    hintText: 'What do you want to order',
                  ),
                ),
                const Icon(Icons.filter, color: Colors.green),
              ],
            ),
            Container(
              width: width - 20,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.green),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset('assets/promo.png'),
                  SizedBox(
                      width: width / 2,
                      child: const ThirdHeading(
                        heading: 'Special Deal For October',
                      )),
                  const Padding(
                      padding: EdgeInsets.only(top: 68.0),
                      child: BrandButton(
                        brandIcon: Icons.shopping_cart,
                        btnText: "Buy Now",
                      ))
                ],
              ),
            ),
            const ListTile(
                title: Text(
                  'Nearest Restaurant',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                trailing: ViewMoreButton()),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  RestaurantCard(heading: 'Vegan Resto', imagePath: 'assets/rest1.png', time: '12 Mins',),
                  RestaurantCard(heading: 'Healthy Food', imagePath: 'assets/rest2.png', time: '8 Mins',),
                  RestaurantCard(heading: 'Vegan Resto', imagePath: 'assets/rest1.png', time: '12 Mins',),
                  RestaurantCard(heading: 'Healthy Food', imagePath: 'assets/rest2.png', time: '8 Mins',),
                  RestaurantCard(heading: 'Vegan Resto', imagePath: 'assets/rest1.png', time: '12 Mins',),
                  RestaurantCard(heading: 'Healthy Food', imagePath: 'assets/rest2.png', time: '8 Mins',)
                ],
              ),
            ),
            const ListTile(
                title: Text(
                  'Popular Menu',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                trailing: ViewMoreButton()),
            const MenuCard(imagePath: 'assets/menu1.png', price: "7 \$", menu: 'Herbal Pancake', restaurant: 'Warung Herbal',),
            const MenuCard(imagePath: 'assets/menu2.png', price: "5 \$", menu: 'Fruit Salad', restaurant: 'Wijie Resto',),
            const MenuCard(imagePath: 'assets/menu3.png', price: "15 \$", menu: 'Green Noddle', restaurant: 'Noodle Home',),

          ],
        ),
      ),
    );
  }
}


