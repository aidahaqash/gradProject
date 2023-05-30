// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Chats {
  final int id;
  final String Shop, description;

  Chats({
    required this.id,
    required this.Shop,
    required this.description,
  });
}

// Our demo Products

List<Chats> demoChats = [
  Chats(
    id: 0,
    Shop: "Aida Haqash ",
    description: des,
  ),
  // Chats(
  //   id: 1,
  //   Shop: "Sephora ",
  //   description: des,
  // ),
  // Chats(id: 2, Shop: "Addidas ", description: des),
];
final String des = "Sent you a message..";
