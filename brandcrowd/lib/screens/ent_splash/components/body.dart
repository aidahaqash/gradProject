// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:brandcrowd/components/default_button.dart';
import 'package:brandcrowd/constants.dart';
import 'package:brandcrowd/screens/sign_in/sign_in_screen.dart';
import 'package:brandcrowd/screens/customer_splash/components/customer_splash_content.dart';

import '../../../size_config.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List splashData = [
    {
      "text": "Welcome to BrandCrowd, Let's start",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "Open your own online buisness in one click",
      "image": "assets/images/splash_2.png"
    },
    {
      "text":
          "Manage your business from home \n and reach customers around the world easily ",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                      image: splashData[index]["image"],
                      text: splashData[index]['text'],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    child: Column(
                      children: <Widget>[
                        Spacer(flex: 3),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(splashData.length,
                                (index) => buildDot(index: index))),
                        Spacer(flex: 3),
                        DefaultButton(
                          text: "Continue",
                          press: () {
                            Navigator.pushNamed(
                                context, SignInScreen.routeName);
                          },
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
