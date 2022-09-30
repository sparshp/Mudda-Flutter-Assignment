import 'package:flutter/material.dart';

class Product {
  final String image, title, description, price,size;
  final int  id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Vegetable",
      price: "234/kg",
      size: "2km",
      description: "Tomotos",
      image: "assets/images/img1.png",
      color: Color(0xE26B2600)),
  Product(
      id: 2,
      title: "Grain",
      price: "234/kg",
      size: "8km",
      description: "Wheat",
      image: "assets/images/img2.png",
      color: Color(0xE26B2600)),
  Product(
      id: 3,
      title: "Fruit",
      price: "234/kg",
      size: "10km",
      description: "Grapes",
      image: "assets/images/img3.png",
      color: Color(0xE26B2600)),
  Product(
      id: 4,
      title: "Grain",
      price: "234/kg",
      size: "11km",
      description: "Soyabean",
      image: "assets/images/img4.png",
      color: Color(0xE26B2600)),
  Product(
      id: 5,
      title: "Office Code",
      price: "234/kg",
      size: "12km",
      description: dummyText,
      image: "assets/images/img5.png",
      color: Color(0xE26B2600)),
  Product(
    id: 6,
    title: "Office Code",
    price: "234/kg",
    size: "12km",
    description: dummyText,
    image: "assets/images/img6.png",
    color: Colors.white,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
