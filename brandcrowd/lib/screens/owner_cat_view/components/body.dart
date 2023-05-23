// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/owner_product_card.dart';
import '../../../models/OwnerProduct.dart';
import '../../../size_config.dart';

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            CategoryCard(
              icon: "assets/icons/woman.svg",
              text: "Women",
              press: () {},
              color: const Color(0xFFFFECDF),
            ),
            Spacer(),
            Button(
                text: "Edit",
                press: () {},
                color: Color.fromARGB(255, 247, 234, 118),
                icon: Icon(Icons.edit)),
            Button(
                text: "Delete",
                press: () {
                  Navigator.pop(context);
                },
                color: Color.fromARGB(255, 246, 112, 102),
                icon: Icon(Icons.delete)),
          ],
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        ),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                itemCount: demoProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) =>
                    ProductCard(oproduct: demoProducts[index]),
              )),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
    required this.color,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(20)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon!),
            ),
            const SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
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
