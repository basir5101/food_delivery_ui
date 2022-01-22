import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/bottom_menubar.dart';
import 'package:food_delivery_app/custom_widgets/brand_button.dart';
import 'package:food_delivery_app/custom_widgets/heading_text.dart';
import 'package:food_delivery_app/custom_widgets/image_above_text.dart';
import 'package:food_delivery_app/custom_widgets/input_field.dart';
import 'package:food_delivery_app/custom_widgets/menu_card.dart';
import 'package:food_delivery_app/custom_widgets/restaurant_card.dart';
import 'package:food_delivery_app/custom_widgets/third_heading.dart';
import 'package:food_delivery_app/custom_widgets/view_more_button.dart';
import 'package:food_delivery_app/screens/dashboard_menu.dart';
import 'package:food_delivery_app/screens/search_filter.dart';
import 'package:food_delivery_app/utills/theme_colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  final List<Widget> _widgetOptions = <Widget>[
    DashboardMenu(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: const InputField(
                    prefixIcon: Icons.search,
                    hintText: 'What do you want to order',
                  ),
                ),
                 InkWell(
                   onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchFilter(),));
                   },
                   child: Container(
                     decoration: BoxDecoration(
                       color: Colors.transparent,
                       boxShadow: [
                         BoxShadow(
                           color: Colors.green.withOpacity(0.2),
                           spreadRadius: 4,
                           blurRadius: 7,
                           offset: Offset(0, 0), // changes position of shadow
                         ),
                       ]
                     ),
                       child: Icon(Icons.filter_alt_outlined, color: ThemeColors().primary, size: 35)
                   ),
                 ),
              ],
            ),
            _widgetOptions.elementAt(_selectedIndex),

          ],
        ),
      ),
      bottomNavigationBar: BottomMenuBar(),
    );
  }
}
