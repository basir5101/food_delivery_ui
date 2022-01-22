import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/bottom_menubar.dart';
import 'package:food_delivery_app/custom_widgets/filter_button.dart';
import 'package:food_delivery_app/custom_widgets/search_header.dart';
import 'package:food_delivery_app/screens/popular_menu.dart';

class SearchedMenu extends StatefulWidget {
  const SearchedMenu({Key? key}) : super(key: key);

  @override
  _SearchedMenuState createState() => _SearchedMenuState();
}

class _SearchedMenuState extends State<SearchedMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenuBar(),
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
            PopularMenu()
          ],
        ),
      ),
    );
  }
}
