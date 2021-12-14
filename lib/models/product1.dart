import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  static const ID = 'id';
  static const CATEGORY = 'category';
  static const NAME = 'name';
  static const PRICE = 'price';
  static const BRAND = 'brand';
  static const QUANTITY = 'quantity';
  static const SIZES = 'sizes';
  static const PICTURE = 'picture';

  String _id;
  String _category;
  String _name;
  String _brand;
  String _picture;
  double _price;
  int _quantity;
  List _sizes;

//  getters
  String get id => _id;
  String get category => _category;
  String get name => _name;
  String get brand => _brand;
  String get imageUrl => _picture;
  double get price => _price;
  int get quantity => _quantity;
  List get sizes => _sizes;

  Product.fromSnapshot(DocumentSnapshot snapshot) {
    Map data = snapshot.data;
    _id = data[ID];
    _category = data[CATEGORY];
    _name = data[NAME];
    _brand = data[BRAND];
    _price = data[PRICE];
    _quantity = data[QUANTITY];
    _sizes = data[SIZES];
    _picture = data[PICTURE];
  }
}
