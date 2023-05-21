// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:brandcrowd/screens/customer_shops/components/ads.dart';
import 'package:brandcrowd/screens/customer_shops/components/categories.dart';
import 'package:brandcrowd/screens/customer_shops/components/customer_shops.dart';
import 'package:brandcrowd/screens/customer_shops/components/home_header.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            Categories(),
            Ads(),
            Shops(),
          ],
        ),
      ),
    );
  }
}
