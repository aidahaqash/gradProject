// ignore_for_file: deprecated_member_use

import 'package:brandcrowd/constants.dart';
import 'package:brandcrowd/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/Shop.dart';
import '../size_config.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({
    Key? key,
    this.width = 300,
    this.aspectRetio = 1.02,
    required this.shop,
  }) : super(key: key);

  final double width, aspectRetio;
  final Shop shop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            HomeScreen.routeName,
            //arguments: ProductDetailsArguments(shop: shop),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: shop.id.toString(),
                    child: Image.asset(
                      shop.image,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${shop.title}",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                  ),
                  const Spacer(),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      height: getProportionateScreenWidth(40),
                      width: getProportionateScreenWidth(40),
                      decoration: BoxDecoration(
                        color: shop.isFavourite ? Colors.white : Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Star Icon.svg",
                        color: shop.isFavourite
                            ? const Color.fromARGB(255, 247, 255, 30)
                            : Colors.grey,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
