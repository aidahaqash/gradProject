// ignore_for_file: use_key_in_widget_constructors

import 'package:brandcrowd/components/navbar_owner.dart';
import 'package:brandcrowd/enums.dart';
import 'package:brandcrowd/screens/owner_cat_view/components/body.dart';

import 'package:flutter/material.dart';

class ViewCatScreen extends StatelessWidget {
  static String routeName = "/viewcat";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Men', style: TextStyle(color: Colors.grey)),
      ),
      body: Body(),
      bottomNavigationBar: const OwnerNavBar(selectedMenu: MenuState.home),
    );
  }
}
