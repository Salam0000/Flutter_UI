import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Product {
  Product(
      {required this.name,
      required this.evalute,
      required this.price,
      required this.image,
      required this.isFavorite});
  String image;
  String name;
  double price;
  int evalute;
  bool isFavorite;
  
}
