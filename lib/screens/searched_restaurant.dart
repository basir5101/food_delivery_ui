import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/filter_button.dart';
import 'package:food_delivery_app/custom_widgets/search_header.dart';
import 'package:food_delivery_app/screens/popular_restaurant.dart';

class SearchedRestaurant extends StatefulWidget {
  const SearchedRestaurant({Key? key}) : super(key: key);

  @override
  _SearchedRestaurantState createState() => _SearchedRestaurantState();
}

class _SearchedRestaurantState extends State<SearchedRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            SearchHeader(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  FilterButton(btnText: '>10 Km' ),
                  FilterButton(btnText: '>Soup' ),
                ],
              ),
            ),
            PopularRestaurant()
          ],
        ),
      ),
    );
  }
}
