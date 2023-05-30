// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:brandcrowd/components/default_button.dart';
import 'package:brandcrowd/screens/add_shop/components/heading.dart';
import 'package:brandcrowd/screens/edit_shop/edit_shop_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../login_success/login_success_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const Heading(),
            SizedBox(height: getProportionateScreenWidth(40)),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SizedBox(
                width: getProportionateScreenWidth(100),
                child: AspectRatio(
                  aspectRatio: 1.02,
                  child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(30)),
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset("assets/images/image.png")),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Container(
                child: Text(
                  "Insert Your Shop Logo",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(40)),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "Shop Name",
                  labelStyle: TextStyle(color: kPrimaryColor),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Enter Your Shop Name"),
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            TextField(
              maxLines: 2,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "Shop Description",
                  labelStyle: TextStyle(color: kPrimaryColor),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Describe Your Shop (20 words)"),
            ),
            SizedBox(height: getProportionateScreenWidth(50)),
            DefaultButton(
              text: "Continue",
              press: () {
                Navigator.pushNamed(context, EditShopScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
