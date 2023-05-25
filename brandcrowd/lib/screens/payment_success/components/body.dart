// ignore_for_file: use_key_in_widget_constructors

import 'package:brandcrowd/constants.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../customer_shops/customer_shops_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Container(
          alignment: Alignment.center,
          child: Text(
            "You Placed the order successfully!",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              color: kPrimaryColor,
            ),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Rate this shop please",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(15),
              color: kSecondaryColor,
            ),
          ),
        ),
        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        Spacer(),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.pushNamed(context, ShopsScreen.routeName);
            },
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
