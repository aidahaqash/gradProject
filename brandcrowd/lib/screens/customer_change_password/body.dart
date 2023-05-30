// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../profile/components/profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.center,
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                labelText: "Current Password",
                labelStyle: TextStyle(color: kPrimaryColor),
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Enter your current password"),
          ),
          TextField(
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                labelText: "New Password",
                labelStyle: TextStyle(color: kPrimaryColor),
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Enter your new password"),
          ),
          TextField(
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                labelText: "Confirm Password",
                labelStyle: TextStyle(color: kPrimaryColor),
                hintStyle: TextStyle(color: Colors.grey),
                hintText: "Confirm password"),
          ),
          SizedBox(height: getProportionateScreenWidth(50)),
          DefaultButton(
            text: "Update",
            press: () {},
          ),
        ],
      ),
    );
  }
}
