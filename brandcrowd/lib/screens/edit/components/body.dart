// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:brandcrowd/components/default_button.dart';
import 'package:brandcrowd/screens/edit/components/heading.dart';
import 'package:brandcrowd/screens/edit_product/edit_product_screen.dart';

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
                  "You can add up to 4 photos to your product ",
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
                  labelText: "Product Name",
                  labelStyle: TextStyle(color: kPrimaryColor),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Enter product name"),
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            // DropdownButton<String>(
            //   focusColor: Colors.white,
            //   value: _chosenValue,
            //   //elevation: 5,
            //   style: TextStyle(color: Colors.white),
            //   iconEnabledColor: Colors.black,
            //   items: <String>['Women', 'Men', 'add new category']
            //       .map<DropdownMenuItem<String>>((String value) {
            //     return DropdownMenuItem<String>(
            //       value: value,
            //       child: Text(
            //         value,
            //         style: TextStyle(color: Colors.black),
            //       ),
            //     );
            //   }).toList(),
            //   hint: Text(
            //     "Product Category",
            //     style: TextStyle(
            //         color: Colors.black,
            //         fontSize: 14,
            //         fontWeight: FontWeight.w500),
            //   ),
            //   onChanged: (String? value) {
            //     setState(() {
            //       _chosenValue = value!;
            //     });
            //   },
            // ),
            // SizedBox(height: getProportionateScreenWidth(50)),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "Product Details",
                  labelStyle: TextStyle(color: kPrimaryColor),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Describe product (750 words)"),
            ),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "Product Price",
                  labelStyle: TextStyle(color: kPrimaryColor),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Enter Product Price"),
            ),
            SizedBox(height: getProportionateScreenWidth(50)),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "Product Quantity",
                  labelStyle: TextStyle(color: kPrimaryColor),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Quantity of product in stock"),
            ),
            SizedBox(height: getProportionateScreenWidth(50)),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "Colors",
                  labelStyle: TextStyle(color: kPrimaryColor),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Available colors for product"),
            ),
            SizedBox(height: getProportionateScreenWidth(50)),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "Add Sizes",
                  labelStyle: TextStyle(color: kPrimaryColor),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Available Sizes if needed"),
            ),
            SizedBox(height: getProportionateScreenWidth(50)),
            DefaultButton(
              text: "Save",
              press: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
