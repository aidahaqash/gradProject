import 'package:brandcrowd/constants.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Heading extends StatelessWidget {
  const Heading({
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
            "Fill Product Information To Continue",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
