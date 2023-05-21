// ignore_for_file: use_key_in_widget_constructors

import 'package:brandcrowd/components/navbar_owner.dart';
import 'package:brandcrowd/enums.dart';
import 'package:brandcrowd/screens/owner_shops/components/body.dart';
import 'package:flutter/material.dart';

import '../../models/OwnerShops.dart';

class OwnerShopsScreen extends StatelessWidget {
  static String routeName = "/ownershops";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shops', style: TextStyle(color: Colors.grey)),
      ),
      body: Body(),
      bottomNavigationBar: const OwnerNavBar(selectedMenu: MenuState.home),
    );
  }
}
