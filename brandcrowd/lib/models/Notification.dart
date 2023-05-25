// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyNotification {
  final int id;
  final String notification, description;

  MyNotification({
    required this.id,
    required this.notification,
    required this.description,
  });
}

// Our demo Products

List<MyNotification> demoNotification = [
  MyNotification(
    id: 0,
    notification: "Wireless Controller for PS4™",
    description: "To check order status, click here",
  ),
  MyNotification(
    id: 1,
    notification: "Check out new arrivals at H&M",
    description: "To see more , click here",
  ),
];
