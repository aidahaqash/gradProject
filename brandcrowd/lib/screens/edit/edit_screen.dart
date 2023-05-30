// ignore_for_file: use_key_in_widget_constructors

import 'package:brandcrowd/components/navbar_owner.dart';
import 'package:brandcrowd/enums.dart';
import 'package:brandcrowd/screens/edit/components/body.dart';

import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  static String routeName = "/editProduct";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product', style: TextStyle(color: Colors.grey)),
      ),
      body: Body(),
      bottomNavigationBar: const OwnerNavBar(selectedMenu: MenuState.home),
    );
  }
}
