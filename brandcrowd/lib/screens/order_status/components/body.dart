// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../models/Notification.dart';
import '../../../size_config.dart';
import '../../customer_shops/customer_shops_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/order.png",
              height: getProportionateScreenHeight(265),
              width: getProportionateScreenWidth(235),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Order Status",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(20),
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text("Order Date: "),
                    SizedBox(
                      width: getProportionateScreenWidth(20),
                    ),
                    Text("25-5-2023"),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  children: [
                    Text("Order Number: "),
                    SizedBox(
                      width: getProportionateScreenWidth(20),
                    ),
                    Text("82514"),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  children: [
                    Text("Payment: "),
                    SizedBox(
                      width: getProportionateScreenWidth(20),
                    ),
                    Text("PayPal: aid**********"),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  children: [
                    Text("Shipping Address: "),
                    SizedBox(
                      width: getProportionateScreenWidth(20),
                    ),
                    Text("Nablus-Alnajah university"),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  children: [
                    Text("Order Status: "),
                    SizedBox(
                      width: getProportionateScreenWidth(20),
                    ),
                    Text("In Proccess"),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Spacer(),
            SizedBox(
              width: SizeConfig.screenWidth * 0.6,
              child: DefaultButton(
                text: "Back to home",
                press: () {
                  Navigator.pushNamed(context, ShopsScreen.routeName);
                },
              ),
            ),
            const Spacer(),
          ],
        ));
  }
}
