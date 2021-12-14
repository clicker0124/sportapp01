import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// class Product{
// //  constants
//   static const String BRAND = 'brand';
//   static const String CATEGORY = 'category';
//   // static const String COLORS = 'colors';
//   // static const String FEATURED = 'featured';
//   static const String ID = 'id';
//   static const String NAME = 'name';
//   static const String PICTURE = 'picture';
//   static const String PRICE = 'price';
//   static const String QUANTITY = 'quantity';
//   // static const String SALE = 'sale';
//   static const String SIZE = 'size';

// //  private variables
//   String _brand;
//   String _category;
//   String _id;
//   String _name;
//   String _picture;
//   double _price;
//   int _quantity;
//   // List<String> _colors;
//   List<String> _size;
//   // bool _featured;
//   // bool _sale;

// //  getters
//   String get brand => _brand;
//   String get category => _category;
//   String get id => _id;
//   String get name => _name;
//   String get picture => _picture;
//   double get price => _price;
//   int get quantity => _quantity;
//   // List<String> get colors => _colors;
//   List<String> get size => _size;
//   // bool get featured => _featured;
//   // bool get sale => _sale;

//   Product.fromSnapshot(DocumentSnapshot snapshot){
//     // _featured = snapshot.data[FEATURED];
//     _brand = snapshot.data[BRAND];
//     _category = snapshot.data[CATEGORY];
//     _id = snapshot.data[ID];
//     _name = snapshot.data[NAME];
//     _picture = snapshot.data[PICTURE];
//     _price = snapshot.data[PRICE];
//     // _colors = snapshot.data[COLORS];
//     _size = snapshot.data[SIZE];
//     // _sale = snapshot.data[SALE];
//     _quantity = snapshot.data[QUANTITY];
//   }

// }
class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  // Product(
  //   id: 1,
  //   images: [
  //     "assets/images/ps4_console_white_1.png",
  //     "assets/images/ps4_console_white_2.png",
  //     "assets/images/ps4_console_white_3.png",
  //     "assets/images/ps4_console_white_4.png",
  //   ],
  //   colors: [
  //     Color(0xFFF6625E),
  //     Color(0xFF836DB8),
  //     Color(0xFFDECB9C),
  //     Colors.white,
  //   ],
  //   title: "Wireless Controller for PS4™",
  //   price: 64.99,
  //   description: description,
  //   rating: 4.8,
  //   isFavourite: true,
  //   isPopular: true,
  // ),
  // Product(
  //   id: 2,
  //   images: [
  //     "assets/images/Image Popular Product 2.png",
  //   ],
  //   colors: [
  //     Color(0xFFF6625E),
  //     Color(0xFF836DB8),
  //     Color(0xFFDECB9C),
  //     Colors.white,
  //   ],
  //   title: "Nike Sport White - Man Pant",
  //   price: 50.5,
  //   description: description,
  //   rating: 4.1,
  //   isPopular: true,
  // ),
  // Product(
  //   id: 3,
  //   images: [
  //     "assets/images/glap.png",
  //   ],
  //   colors: [
  //     Color(0xFFF6625E),
  //     Color(0xFF836DB8),
  //     Color(0xFFDECB9C),
  //     Colors.white,
  //   ],
  //   title: "Gloves XC Omega - Polygon",
  //   price: 36.55,
  //   description: description,
  //   rating: 4.1,
  //   isFavourite: true,
  //   isPopular: true,
  // ),
  // Product(
  //   id: 4,
  //   images: [
  //     "assets/images/wireless headset.png",
  //   ],
  //   colors: [
  //     Color(0xFFF6625E),
  //     Color(0xFF836DB8),
  //     Color(0xFFDECB9C),
  //     Colors.white,
  //   ],
  //   title: "Logitech Head",
  //   price: 20.20,
  //   description: description,
  //   rating: 4.1,
  //   isFavourite: true,
  //   isPopular: true,
  // ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
