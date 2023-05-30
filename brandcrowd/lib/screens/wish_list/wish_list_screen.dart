// ignore_for_file: use_key_in_widget_constructors

import 'package:brandcrowd/components/coustom_bottom_nav_bar.dart';
import 'package:brandcrowd/enums.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class WishListScreen extends StatelessWidget {
  static String routeName = "/wishlist";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wish List', style: TextStyle(color: Colors.grey)),
      ),
      body: Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
