import 'package:brandcrowd/screens/customer_splash/components/body.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatelessWidget {
  static String routeName = "/spllash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
