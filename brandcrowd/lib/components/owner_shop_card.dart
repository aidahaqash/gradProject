// ignore_for_file: deprecated_member_use, unnecessary_string_interpolations

import 'package:flutter/material.dart';

import '../models/OwnerShops.dart';
import '../size_config.dart';

class OwnerShopCard extends StatelessWidget {
  const OwnerShopCard({
    Key? key,
    this.width = 150,
    this.aspectRetio = 1.02,
    required this.oshop,
  }) : super(key: key);

  final double width, aspectRetio;
  final OwnerShop oshop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          // onTap: () => Navigator.pushNamed(
          // context,
          // AddShopScreen.routeName,
          // arguments: ShopDetailsArguments(oshop: oshop),
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  decoration: BoxDecoration(
                    color: oshop.color.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: oshop.id.toString(),
                    child: Image.asset(
                      oshop.image,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${oshop.title}",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    maxLines: 2,
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
