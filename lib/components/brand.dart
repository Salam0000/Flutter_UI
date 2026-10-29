import 'package:flutter/material.dart';

class Brand extends StatelessWidget {
  Brand({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(
          image,
          height: 50,
          width: 50,
          // child: Image.asset(
          // image,
          // height: 70,
          // width: 70,
        ),
      ),
    );
  }
}
