import 'package:brandcrowd/screens/owner_splash/components/body.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class OwnerSplashScreen extends StatelessWidget {
  static String routeName = "/ownerspllash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
