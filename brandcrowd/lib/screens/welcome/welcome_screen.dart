// ignore_for_file: use_key_in_widget_constructors

import 'package:brandcrowd/screens/welcome/components/body.dart';
import 'package:flutter/material.dart';
import 'package:brandcrowd/size_config.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
