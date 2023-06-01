// ignore_for_file: file_names, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Shop {
  final int id;
  final String title;
  final String image;
  final Color color;
  final double rating;
  final bool isFavourite;

  Shop({
    required this.id,
    required this.image,
    required this.color,
    this.rating = 0.0,
    this.isFavourite = false,
    required this.title,
  });
}

// Future<List<Shop>> fetchShopData() async {
//   var url = Uri.parse(
//       'https://api.example.com/shops'); // Replace with your API endpoint URL

//   var response = await http.get(url);

//   if (response.statusCode == 200) {
//     var data = json.decode(response.body) as List<dynamic>;

//     List<Shop> demoShops = data
//         .map((item) => Shop(
//               id: item['id'],
//               title: item['Name'],
//               image: item['logourl'],
//               color: Color.fromARGB(255, 247, 255, 30),
//               rating: item['rating'],
//               isFavourite: item['isFavourite'],
//             ))
//         .toList();

//     return demoShops;
//   } else {
//     throw Exception('Failed to fetch shop data');
//   }
// }

List<Shop> demoShops = [
  Shop(
    id: 1,
    image: "assets/images/Gucci.jpg",
    color: Color.fromARGB(255, 247, 255, 30),
    title: "Gucci",
    rating: 4.8,
    isFavourite: false,
  ),
  Shop(
    id: 2,
    image: "assets/images/sephora.png",
    color: Color.fromARGB(255, 247, 255, 30),
    title: "Sephora",
    rating: 4.8,
    isFavourite: true,
  ),
  Shop(
    id: 3,
    image: "assets/images/adidas.png",
    color: Color.fromARGB(255, 247, 255, 30),
    title: "Adidas",
    rating: 4.8,
    isFavourite: false,
  ),
];
