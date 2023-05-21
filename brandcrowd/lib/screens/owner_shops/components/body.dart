// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:brandcrowd/screens/owner_shops/components/owner_home_header.dart';
import 'package:brandcrowd/screens/owner_shops/components/owner_shops.dart';
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
            const OwnerHomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            OwnerShops(),
          ],
        ),
      ),
    );
  }
}
