// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:brandcrowd/components/default_button.dart';
import 'package:brandcrowd/screens/add_cat/components/heading.dart';

import 'package:brandcrowd/screens/edit_shop/edit_shop_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SizedBox(
                  width: getProportionateScreenWidth(300),
                  child: Image.asset("assets/images/statics.png")),
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.money, color: Colors.purple),
                        Text("Total of Sold Products:  40")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.message, color: Colors.purple),
                        Text("Total of messages:  60")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.man_2, color: Colors.purple),
                        Text("Total of users:  85")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.production_quantity_limits,
                            color: Colors.purple),
                        Text("Total of products: 150")
                      ],
                    ),
                  ],
                )),
            SizedBox(height: getProportionateScreenWidth(40)),
          ],
        ),
      ),
    );
  }
}
