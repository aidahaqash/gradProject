import 'package:brandcrowd/components/default_button.dart';
import 'package:brandcrowd/size_config.dart';
import 'package:flutter/material.dart';

import '../../../models/OwnerProduct.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final OProduct oproduct;

  const Body({Key? key, required this.oproduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(oproduct: oproduct),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                oproduct: oproduct,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: const Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(oproduct: oproduct),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            bottom: getProportionateScreenWidth(40),
                            top: getProportionateScreenWidth(15),
                          ),
                          // child: Button(
                          //   text: "Edit",
                          //   press: () {},
                          //   color: Colors.yellow,
                          //   icon: Icon(Icons.edit),
                          // )
                          child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  Button(
                                      text: "Edit",
                                      press: () {},
                                      color: Color.fromARGB(255, 247, 234, 118),
                                      icon: Icon(Icons.edit)),
                                  Spacer(),
                                  Button(
                                      text: "Delete",
                                      press: () {
                                        Navigator.pop(context);
                                      },
                                      color: Color.fromARGB(255, 246, 112, 102),
                                      icon: Icon(Icons.delete)),
                                ],
                              ))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.text,
    required this.press,
    required this.color,
    required this.icon,
  }) : super(key: key);
  final String text;
  final VoidCallback press;
  final Color color;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(100),
      height: getProportionateScreenHeight(40),
      child: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: color,
        onPressed: press,
        icon: icon,
        label: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
