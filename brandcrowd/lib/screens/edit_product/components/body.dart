import 'package:brandcrowd/components/default_button.dart';
import 'package:brandcrowd/constants.dart';
import 'package:brandcrowd/size_config.dart';
import 'package:flutter/material.dart';

import '../../../models/OwnerProduct.dart';
import '../../edit/edit_screen.dart';
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
                          child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  Button(
                                      press: () {
                                        Navigator.pushNamed(
                                            context, EditScreen.routeName);
                                      },
                                      color: Colors.grey.withOpacity(0.1),
                                      icon: Icon(
                                        Icons.edit,
                                        color: kPrimaryColor,
                                      )),
                                  Spacer(),
                                  Button(
                                      press: () {
                                        Navigator.pop(context);
                                      },
                                      color: Colors.grey.withOpacity(0.1),
                                      icon: Icon(
                                        Icons.delete,
                                        color: kPrimaryColor,
                                      )),
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
    required this.press,
    required this.color,
    required this.icon,
  }) : super(key: key);
  final GestureTapCallback press;
  final Color color;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Container(
          child: icon,
        ));
  }
}
