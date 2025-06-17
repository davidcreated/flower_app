import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  const Products({
    super.key,
    required this.image,
    required this.price,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset(image, width: 300)),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 55),
          child: Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 55, right: 20),
          child: Text(
            "More details about this Product, that customer wants to know  ",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 54, right: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$$price",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Image.asset(
                "assets/images/basket icon.png",
                height: 25,
                width: 25,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
