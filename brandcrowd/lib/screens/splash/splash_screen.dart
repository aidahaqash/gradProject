import 'package:brandcrowd/screens/splash/components/body.dart';
import 'package:brandcrowd/size_config.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatelessWidget {
  static String routeName = "/spllash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
