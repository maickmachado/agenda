import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final int id;
  final String title;
  final String description;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final double price;
  bool isFavourite;
  bool isPopular;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    required this.price,
    this.rating = 0,
    this.isFavourite = false,
    this.isPopular = false,
  });
}
