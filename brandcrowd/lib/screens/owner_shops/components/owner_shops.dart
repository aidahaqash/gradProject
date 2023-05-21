// ignore_for_file: curly_braces_in_flow_control_structures, use_key_in_widget_constructors, must_be_immutable, avoid_unnecessary_containers, prefer_const_constructors

import 'package:brandcrowd/components/owner_shop_card.dart';
import 'package:brandcrowd/models/OwnerShops.dart';

import 'package:brandcrowd/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../add_shop/add_shop_screen.dart';

class OwnerShops extends StatelessWidget {
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                OwnerDemoShops.length,
                (index) {
                  return OwnerShopCard(oshop: OwnerDemoShops[index]);
                },
              ),
              SizedBox(width: getProportionateScreenWidth(30)),
            ],
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            AddShopScreen.routeName,
          ),
          child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SizedBox(
              width: getProportionateScreenWidth(150),
              child: AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset("assets/images/plus.png")),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(45)),
          child: Container(
            child: Text(
              "Add New Shop",
              style: TextStyle(color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
