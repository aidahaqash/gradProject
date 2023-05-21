// ignore_for_file: prefer_const_constructors

//import 'package:brandcrowd/screens/customer_splash/customer_splash_screen.dart';

import 'package:brandcrowd/screens/complete_profile/complete_profile_screen.dart';
import 'package:brandcrowd/screens/owner_shops/owner_shops_screen.dart';
import 'package:brandcrowd/screens/sign_in/sign_in_screen.dart';
import 'package:brandcrowd/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../customer_shops/customer_shops_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
                children: <Widget>[
                  Spacer(flex: 2),
                  Text(
                    "BrandCrowd",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(36),
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Join us now"),
                  Spacer(flex: 2),
                  Image.asset(
                    "assets/images/splash_1.png",
                    height: getProportionateScreenHeight(265),
                    width: getProportionateScreenWidth(235),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Customer",
                      press: () {
                        Navigator.pushNamed(context, ShopsScreen.routeName);
                      },
                    ),
                    Spacer(flex: 1),
                    DefaultButton(
                      text: "Business Owner",
                      press: () {
                        Navigator.pushNamed(
                            context, OwnerShopsScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
