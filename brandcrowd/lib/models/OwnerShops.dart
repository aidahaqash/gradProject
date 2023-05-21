// ignore_for_file: file_names, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class OwnerShop {
  final int id;
  final String title;
  final String image;
  final Color color;

  OwnerShop({
    required this.id,
    required this.image,
    required this.title,
    required this.color,
  });
}

// Our demo Products

List<OwnerShop> OwnerDemoShops = [
  OwnerShop(
    id: 1,
    image: "assets/images/Gucci.jpg",
    color: Color.fromARGB(255, 238, 66, 66),
    title: "Gucci",
  ),
  OwnerShop(
    id: 2,
    image: "assets/images/sephora.png",
    color: Color.fromARGB(255, 238, 66, 66),
    title: "Sephora",
  ),
];
