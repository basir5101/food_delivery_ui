import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/bottom_menubar.dart';
import 'package:food_delivery_app/custom_widgets/brand_button.dart';
import 'package:food_delivery_app/custom_widgets/heading_text.dart';
import 'package:food_delivery_app/custom_widgets/item_cart.dart';
import 'package:food_delivery_app/utills/theme_colors.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  TextStyle style = TextStyle(
      fontSize: 20, color: Colors.white70, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenuBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadingText(heading: 'Order Details'),
          const MenuCart(
              imagePath: 'assets/menu1.png',
              price: '50 \$',
              menu: 'Spacy fresh crab',
              restaurant: 'Waroenk kita'),
          const MenuCart(
              imagePath: 'assets/menu1.png',
              price: '70 \$',
              menu: 'Spacy fresh crab',
              restaurant: 'Waroenk kita'),
          SizedBox(
            height: 50,
          ),
          Container(
            // height: MediaQuery.of(context).size.height / ,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                ThemeColors().primary,
                ThemeColors().secondary,
              ]),
              image: DecorationImage(
                image: AssetImage("assets/Pattern.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Sub Total',
                    style: style,
                  ),
                  trailing: Text(
                    " 120 \$ ",
                    style: style,
                  ),
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                ),
                ListTile(
                  title: Text(
                    'Delivery Charge',
                    style: style,
                  ),
                  trailing: Text(
                    " 10 \$ ",
                    style: style,
                  ),
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                ),
                ListTile(
                  title: Text(
                    'Discount',
                    style: style,
                  ),
                  trailing: Text(
                    " 20 \$ ",
                    style: style,
                  ),
                  contentPadding: EdgeInsets.only(left: 10, right: 10),
                  horizontalTitleGap: 5,
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    'Total',
                    style: style,
                  ),
                  trailing: Text(
                    " 150 \$ ",
                    style: style,
                  ),
                ),
                BrandButton(
                    btnText: 'Place My Order',
                    brandIcon: Icons.add_shopping_cart),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
