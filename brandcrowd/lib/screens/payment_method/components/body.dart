// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:brandcrowd/constants.dart';
import 'package:brandcrowd/screens/paypal/paypal_screen.dart';

import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(30)),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Payment Method",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(40)),
            SizedBox(
              width: double.infinity,
              height: getProportionateScreenHeight(56),
              child: FloatingActionButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, PaypalScreen.routeName);
                },
                child: Image.asset("assets/images/paypal.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
