// ignore_for_file: use_key_in_widget_constructors

import 'package:brandcrowd/components/navbar_owner.dart';
import 'package:brandcrowd/enums.dart';
import 'package:brandcrowd/screens/account/body.dart';
import 'package:flutter/material.dart';

class UserAccountScreen extends StatelessWidget {
  static String routeName = "/useraccount";
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
      bottomNavigationBar: const OwnerNavBar(selectedMenu: MenuState.profile),
    );
  }
}
