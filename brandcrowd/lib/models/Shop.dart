// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Shop {
  final int id;
  final String title;
  final String image;
  final Color color;
  final double rating;
  final bool isFavourite, isPopular;

  Shop({
    required this.id,
    required this.image,
    required this.color,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
  });
}

// Our demo Products

List<Shop> demoShops = [
  Shop(
    id: 1,
    image: "assets/images/Gucci.jpg",
    color: Color.fromARGB(255, 247, 255, 30),
    title: "Gucci",
    rating: 4.8,
    isFavourite: false,
    isPopular: true,
  ),
  Shop(
    id: 2,
    image: "assets/images/sephora.png",
    color: Color.fromARGB(255, 247, 255, 30),
    title: "Sephora",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Shop(
    id: 3,
    image: "assets/images/adidas.png",
    color: Color.fromARGB(255, 247, 255, 30),
    title: "Adidas",
    rating: 4.8,
    isFavourite: false,
    isPopular: true,
  ),
  Shop(
    id: 4,
    image: "assets/images/wireless headset.png",
    color: Color.fromARGB(255, 247, 255, 30),
    title: "Nike",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
];
