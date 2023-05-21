// ignore_for_file: use_key_in_widget_constructors

import 'package:brandcrowd/components/navbar_owner.dart';
import 'package:brandcrowd/enums.dart';
import 'package:brandcrowd/screens/add_cat/components/body.dart';

import 'package:flutter/material.dart';

class AddCatScreen extends StatelessWidget {
  static String routeName = "/addcat";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Category', style: TextStyle(color: Colors.grey)),
      ),
      body: Body(),
      bottomNavigationBar: const OwnerNavBar(selectedMenu: MenuState.home),
    );
  }
}
