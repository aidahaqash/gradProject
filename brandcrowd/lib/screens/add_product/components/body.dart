// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:brandcrowd/components/default_button.dart';
import 'package:brandcrowd/screens/add_product/components/heading.dart';

import 'package:brandcrowd/screens/edit_shop/edit_shop_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

const List<String> list = <String>[
  '  Women',
  '  Men',
  '  Kids',
  '  Add New Category...                                                                 '
];

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String dropdownValue = list.first;

  bool red = false;
  bool blue = false;
  bool white = false;
  bool black = false;
  bool green = false;
  bool yellow = false;

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
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 30,
                hint: Text(
                  "Select Category",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                style: const TextStyle(color: kPrimaryColor),
                underline: Container(
                  height: 1,
                  color: Colors.grey,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
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
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Check Product Colors",
                style: TextStyle(color: kPrimaryColor, fontSize: 20),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            Column(
              children: [
                Row(children: [
                  Checkbox(
                    value: red,
                    onChanged: (bool? value) {
                      setState(() {
                        red = value!;
                      });
                    },
                  ),
                  Text(
                    "Red",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  Checkbox(
                    value: blue,
                    onChanged: (bool? value) {
                      setState(() {
                        blue = value!;
                      });
                    },
                  ),
                  Text(
                    "Blue",
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  Checkbox(
                    value: black,
                    onChanged: (bool? value) {
                      setState(() {
                        black = value!;
                      });
                    },
                  ),
                  Text(
                    "Black",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                ]),
                Row(
                  children: [
                    Checkbox(
                      value: white,
                      onChanged: (bool? value) {
                        setState(() {
                          white = value!;
                        });
                      },
                    ),
                    Text(
                      "White",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(10),
                    ),
                    Checkbox(
                      value: green,
                      onChanged: (bool? value) {
                        setState(() {
                          green = value!;
                        });
                      },
                    ),
                    Text(
                      "Green",
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(10),
                    ),
                    Checkbox(
                      value: yellow,
                      onChanged: (bool? value) {
                        setState(() {
                          yellow = value!;
                        });
                      },
                    ),
                    Text(
                      "Yellow",
                      style: TextStyle(color: Colors.yellow, fontSize: 20),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(10),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenWidth(40)),
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
