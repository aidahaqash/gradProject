// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:brandcrowd/screens/customer_account/components/profile_pic.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ProfilePic(),
              const SizedBox(height: 20),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text("Email",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        color: kPrimaryColor,
                      ))),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "aida@gmail.com",
                  labelStyle: TextStyle(color: kPrimaryColor),
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text("Name",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      color: kPrimaryColor,
                    )),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "Aida Haqash",
                  labelStyle: TextStyle(color: kPrimaryColor),
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text("Phone Number",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        color: kPrimaryColor,
                      ))),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "0597596081",
                  labelStyle: TextStyle(color: kPrimaryColor),
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text("City",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        color: kPrimaryColor,
                      ))),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "Nablus",
                  labelStyle: TextStyle(color: kPrimaryColor),
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text("Address",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        color: kPrimaryColor,
                      ))),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  labelText: "Alnajah University",
                  labelStyle: TextStyle(color: kPrimaryColor),
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(50)),
              DefaultButton(
                text: "Update",
                press: () {},
              ),
            ],
          ),
        ));
  }
}
