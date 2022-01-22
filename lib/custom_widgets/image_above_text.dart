import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/brand_button.dart';
import 'package:food_delivery_app/custom_widgets/third_heading.dart';

class ImageAboveText extends StatefulWidget {
  const ImageAboveText({Key? key}) : super(key: key);

  @override
  _ImageAboveTextState createState() => _ImageAboveTextState();
}

class _ImageAboveTextState extends State<ImageAboveText> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
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
    );
  }
}
