// ignore_for_file: use_key_in_widget_constructors

import 'package:brandcrowd/components/coustom_bottom_nav_bar.dart';
import 'package:brandcrowd/enums.dart';
import 'package:brandcrowd/screens/customer_account/components/body.dart';
import 'package:flutter/material.dart';

class CustomerAccountScreen extends StatelessWidget {
  static String routeName = "/customeraccount";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Account",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
