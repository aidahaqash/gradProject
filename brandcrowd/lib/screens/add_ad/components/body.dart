// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:brandcrowd/components/default_button.dart';
import 'package:brandcrowd/screens/add_product/components/heading.dart';

import 'package:brandcrowd/screens/edit_shop/edit_shop_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  // late String _chosenValue;

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
              child: Container(
                child: Text(
                  "Add 285px x 146px photo",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
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
            SizedBox(height: getProportionateScreenWidth(40)),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "Advertisement details",
                  labelStyle: TextStyle(color: kPrimaryColor),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Add your description for ad."),
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            SizedBox(height: getProportionateScreenWidth(50)),
            DefaultButton(
              text: "Add",
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
