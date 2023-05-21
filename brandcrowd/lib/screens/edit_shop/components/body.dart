// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:brandcrowd/components/default_button.dart';
import 'package:brandcrowd/screens/add_product/add_product_screen.dart';
import 'package:brandcrowd/screens/edit_shop/components/cat.dart';
import 'package:brandcrowd/screens/edit_shop/components/edit_header.dart';
import 'package:brandcrowd/screens/login_success/login_success_screen.dart';
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
            Categories(),
            SizedBox(height: getProportionateScreenWidth(40)),
            DefaultButton(
              text: "Add Product",
              press: () {
                Navigator.pushNamed(context, AddProductScreen.routeName);
              },
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            DefaultButton(
              text: "Add Advertisement",
              press: () {
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              },
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            DefaultButton(
              text: "All Products",
              press: () {
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              },
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            DefaultButton(
              text: "Dashboard",
              press: () {
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
