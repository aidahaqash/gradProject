import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OwnerHomeHeader extends StatelessWidget {
  const OwnerHomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "My Shops",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: Colors.black,
            ),
          ),
          Spacer(),
          Button(
              press: () {},
              color: Colors.white,
              icon: Icon(
                Icons.edit,
                color: kPrimaryColor,
              )),
          Button(
              press: () {
                Navigator.pop(context);
              },
              color: Colors.white,
              icon: Icon(
                Icons.delete,
                color: kPrimaryColor,
              )),
        ],
      ),
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
