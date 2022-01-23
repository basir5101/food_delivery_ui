import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/dashboard.dart';
import 'package:food_delivery_app/screens/dashboard_menu.dart';
import 'package:food_delivery_app/screens/home.dart';
import 'package:food_delivery_app/screens/message.dart';
import 'package:food_delivery_app/screens/order_details.dart';
import 'package:food_delivery_app/utills/theme_colors.dart';

class BottomMenuBar extends StatefulWidget {
  const BottomMenuBar({Key? key}) : super(key: key);

  @override
  _BottomMenuBarState createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  void _onItemTapped(int index) {
    print( index);
    Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => index == 1 ? OrderDetails() :  index == 2 ? MessageList() : Dashboard() ));
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //selectedIconTheme: IconThemeData(color: ThemeColors().primary),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Message',
        ),

      ],
      currentIndex: _selectedIndex,
      selectedItemColor: ThemeColors().primary,
      onTap: _onItemTapped,
     // onTap: Navigator.push(context,  context=> Home()),
    );
  }
}
