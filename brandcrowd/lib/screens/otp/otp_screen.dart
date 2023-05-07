// ignore_for_file: use_key_in_widget_constructors

import 'package:brandcrowd/screens/otp/components/body.dart';
import 'package:brandcrowd/size_config.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP Verification"),
      ),
      body: Body(),
    );
  }
}
