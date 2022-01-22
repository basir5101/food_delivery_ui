import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/heading_text.dart';
import 'package:food_delivery_app/custom_widgets/input_field.dart';
import 'package:food_delivery_app/screens/search_filter.dart';
import 'package:food_delivery_app/utills/theme_colors.dart';

class SearchHeader extends StatefulWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  _SearchHeaderState createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<SearchHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SearchFilter(),));
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
      ],
    );
  }
}
