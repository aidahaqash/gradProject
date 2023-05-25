// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../models/Notification.dart';
import '../order_status/components/body.dart';

class OrderStatusScreen extends StatelessWidget {
  static String routeName = "/orderstatus";

  @override
  Widget build(BuildContext context) {
    final NotificationDetailsArguments agrs = ModalRoute.of(context)!
        .settings
        .arguments as NotificationDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        title: const Text("Order Status", style: TextStyle(color: Colors.grey)),
      ),
      body: Body(),
    );
  }
}

class NotificationDetailsArguments {
  final MyNotification notification;

  NotificationDetailsArguments({required this.notification});
}
