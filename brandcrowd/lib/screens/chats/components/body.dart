// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:brandcrowd/constants.dart';
import 'package:brandcrowd/screens/chats/components/chat.dart';
import 'package:brandcrowd/screens/customer_shops/customer_shops_screen.dart';
import 'package:brandcrowd/screens/login_success/login_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/Chats.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  late final Chats chat;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenWidth(0)),
              child: SizedBox(
                  child: GestureDetector(
                      onTap: () => Navigator.pushNamed(
                            context,
                            ChatRoom.routeName,
                          ),
                      child: ListViewItem(index))));
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 0,
          );
        },
        itemCount: demoChats.length);
  }
}

Widget ListViewItem(int index) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        prefixIcon(),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              message(index),
            ]),
          ),
        ),
      ],
    ),
  );
}

Widget message(int index) {
  double textsize = 14;
  return Container(
    child: RichText(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
          text: demoChats[index].Shop,
          style: TextStyle(
              fontSize: textsize,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          children: [
            TextSpan(
                text: demoChats[index].description,
                style: TextStyle(fontWeight: FontWeight.w400))
          ]),
    ),
  );
}

Widget prefixIcon() {
  return Container(
    height: 50,
    width: 50,
    padding: EdgeInsets.all(10),
    decoration:
        BoxDecoration(shape: BoxShape.circle, color: kPrimaryLightColor),
    child: SvgPicture.asset(
      "assets/icons/Chat bubble Icon.svg",
      color: kPrimaryColor,
    ),
  );
}
