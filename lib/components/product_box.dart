import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.evalute,
      required this.price,
      required this.image,
      required this.isFavorite})
      : super(key: key);
  final String name;
  final int evalute;
  final int price;
  final String image;
  final bool isFavorite;
  Widget build(BuildContext context) {
    return Container(
      // decoration: InputBorder(borderSide: 444.4 ),
      color: Colors.white,
      padding: EdgeInsets.all(2),
      height: 300,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 250,
              bottom: 10,
            ),
            child: Icon(
              Icons.favorite,
              color: isFavorite ? Colors.red : Colors.grey,
            ),
          ),
          Image.network(
            image,
            height: 190,
            width: 170,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 20),
              ),
              Text(price.toString()),
              evalute == 1
                  ? Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                      ],
                    )
                  : evalute == 2
                      ? Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey,
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
            ],
          ),
        ],
      ),
    );
  }
}
