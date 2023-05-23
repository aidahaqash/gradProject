// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:brandcrowd/screens/add_ad/add_ad_screen.dart';
import 'package:brandcrowd/screens/add_product/add_product_screen.dart';
import 'package:brandcrowd/screens/all_products/all_products_screen.dart';
import 'package:brandcrowd/screens/dashboard/dashboard_screen.dart';
import 'package:brandcrowd/screens/edit_shop/components/cat.dart';
import 'package:brandcrowd/screens/edit_shop/components/edit_header.dart';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OptionCard(
                  category: "\n\nAddProduct",
                  press: () {
                    Navigator.pushNamed(context, AddProductScreen.routeName);
                  },
                ),
                OptionCard(
                  category: "\n\nAllProducts",
                  press: () {
                    Navigator.pushNamed(context, AllProductsScreen.routeName);
                  },
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              OptionCard(
                category: "\nAdd \nAdvertisement",
                press: () {
                  Navigator.pushNamed(context, AddAdScreen.routeName);
                },
              ),
              OptionCard(
                category: "\n\nDashboard",
                press: () {
                  Navigator.pushNamed(context, DashboardScreen.routeName);
                },
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  const OptionCard({
    Key? key,
    required this.category,
    required this.press,
  }) : super(key: key);

  final String category;

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        getProportionateScreenWidth(4),
      ),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(160),
          height: getProportionateScreenWidth(160),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/owner.png",
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF343434).withOpacity(0.4),
                        const Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
