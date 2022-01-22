import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/filter_button.dart';
import 'package:food_delivery_app/custom_widgets/heading_text.dart';
import 'package:food_delivery_app/custom_widgets/input_field.dart';
import 'package:food_delivery_app/custom_widgets/theme_button.dart';
import 'package:food_delivery_app/screens/home.dart';
import 'package:food_delivery_app/screens/searched_menu.dart';
import 'package:food_delivery_app/screens/searched_restaurant.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({Key? key}) : super(key: key);

  @override
  _SearchFilterState createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
   bool isRestaurant = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
       ThemeButton(btnText: 'Search',
          route: isRestaurant ? const SearchedRestaurant() : const SearchedMenu()
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  width: MediaQuery.of(context).size.width,
                  child: const InputField(
                    prefixIcon: Icons.search,
                    hintText: 'What do you want to order',
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Type',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children:  [
                InkWell(
                  onTap: (){
                    setState(() {
                      isRestaurant = !isRestaurant;
                    });
                  },
                    child: FilterButton(btnText: 'Restaurant')),
                FilterButton(btnText: 'Menu'),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Location',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: const [
                FilterButton(btnText: '1 Km'),
                FilterButton(btnText: '>10 Km'),
                FilterButton(btnText: '<10 Km'),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Food',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: const [
                FilterButton(btnText: 'Cake'),
                FilterButton(btnText: 'Soup'),
                FilterButton(btnText: 'Main Course'),
              ],
            ),
            Row(
              children: const [
                FilterButton(btnText: 'Apptizer'),
                FilterButton(btnText: 'Dessert'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


