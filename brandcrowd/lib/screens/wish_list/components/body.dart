// ignore_for_file: use_key_in_widget_constructors

import 'package:brandcrowd/components/product_card.dart';

import 'package:brandcrowd/models/Product.dart';
import 'package:brandcrowd/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(20)),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                    itemCount: demoProducts.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) =>
                        demoProducts[index].isFavourite
                            ? ProductCard(product: demoProducts[index])
                            : Text(""))),
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
        ],
      ),
    );
  }
}
