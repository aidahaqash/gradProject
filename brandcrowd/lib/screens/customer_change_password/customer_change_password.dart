// ignore_for_file: use_key_in_widget_constructors

import 'package:brandcrowd/components/coustom_bottom_nav_bar.dart';
import 'package:brandcrowd/enums.dart';
import 'package:brandcrowd/screens/customer_change_password/body.dart';
import 'package:flutter/material.dart';

class CustomerChangePasswordScreen extends StatelessWidget {
  static String routeName = "/custchangepass";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Password"),
      ),
      body: Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
