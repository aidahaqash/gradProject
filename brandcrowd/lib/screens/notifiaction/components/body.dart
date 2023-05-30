// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:brandcrowd/constants.dart';
import 'package:brandcrowd/screens/order_status/order_status_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/Notification.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  late final MyNotification notification;
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
                          context, OrderStatusScreen.routeName,
                          arguments: NotificationDetailsArguments(
                              notification: demoNotification[index])),
                      child: ListViewItem(index))));
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 0,
          );
        },
        itemCount: demoNotification.length);
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
              timeAndDate(index),
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
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
          text: demoNotification[index].notification,
          style: TextStyle(
              fontSize: textsize,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          children: [
            TextSpan(
                text: demoNotification[index].description,
                style: TextStyle(fontWeight: FontWeight.w400))
          ]),
    ),
  );
}

Widget timeAndDate(int index) {
  return Container(
    margin: EdgeInsets.only(top: 5),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        "25-5-2023",
        style: TextStyle(fontSize: 10),
      ),
      Text(
        "8:44 PM",
        style: TextStyle(fontSize: 10),
      )
    ]),
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
      "assets/icons/Bell.svg",
      color: kPrimaryColor,
    ),
  );
}
