// ignore_for_file: use_key_in_widget_constructors

import 'package:brandcrowd/screens/account/user_account_screen.dart';
import 'package:brandcrowd/screens/change_password/change_password_screen.dart';
import 'package:brandcrowd/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () =>
                {Navigator.pushNamed(context, UserAccountScreen.routeName)},
          ),
          ProfileMenu(
            text: "Change Password",
            icon: "assets/icons/Lock.svg",
            press: () {
              Navigator.pushNamed(context, ChangePasswordScreen.routeName);
            },
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {}, //chat room with support
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              Navigator.pushNamed(context, WelcomeScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
