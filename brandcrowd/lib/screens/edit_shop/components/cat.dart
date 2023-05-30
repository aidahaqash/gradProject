// ignore_for_file: use_key_in_widget_constructors

import 'package:brandcrowd/constants.dart';
import 'package:brandcrowd/screens/add_cat/add_cat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';
import '../../owner_cat_view/owner_cat_screen.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/woman.svg", "text": "Women"},
      {"icon": "assets/icons/man.svg", "text": "Men"},
      {"icon": "assets/icons/kid.svg", "text": "Kids"},
    ];
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              categories.length,
              (index) => CategoryCard(
                icon: categories[index]["icon"],
                text: categories[index]["text"],
                color: kPrimaryLightColor,
                press: () {
                  Navigator.pushNamed(context, ViewCatScreen.routeName);
                },
              ),
            ),
          ),
        ),
        CategoryCard(
          icon: "assets/icons/Plus Icon.svg",
          text: "Add",
          color: Color.fromARGB(255, 203, 203, 203),
          press: () {
            Navigator.pushNamed(context, AddCatScreen.routeName);
          },
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
    required this.color,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(20)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon!),
            ),
            const SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
