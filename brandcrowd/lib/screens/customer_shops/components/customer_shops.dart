// ignore_for_file: curly_braces_in_flow_control_structures, use_key_in_widget_constructors

import 'package:brandcrowd/screens/home/components/section_title.dart';
import 'package:brandcrowd/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/shop_card.dart';
import '../../../models/Shop.dart';

class Shops extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Explore shops arround you", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ...List.generate(
                demoShops.length,
                (index) {
                  if (demoShops[index].isPopular)
                    return ShopCard(shop: demoShops[index]);

                  return const SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
