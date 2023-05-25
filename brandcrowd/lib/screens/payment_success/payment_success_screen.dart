// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'components/body.dart';

class PaymentSuccessScreen extends StatelessWidget {
  static String routeName = "/payment_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text("Rating", style: TextStyle(color: Colors.grey)),
      ),
      body: Body(),
    );
  }
}
