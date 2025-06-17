import 'package:flutter/material.dart';
import 'package:plant_app/Utils/colors.dart';

class Detailscreen extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  const Detailscreen({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            bottomParts(context),

            Positioned(
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.85,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top bar: back and filter
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top,
                        right: 16,
                        left: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 25,
                            ),
                          ),
                          Image.asset(
                            "assets/images/filter icon.png",
                            height: 25,
                            width: 25,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 30),

                    // Title
                    Padding(
                      padding: EdgeInsets.only(left: 32),
                      child: Text(
                        name,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          height: 1.01,
                        ),
                      ),
                    ),

                    const SizedBox(height: 50),

                    // Image with colored bar
                    Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: Stack(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 380,
                            child: Image.asset(image),
                          ),

                          // for scroll dot
                          Positioned(
                            top: 275,
                            left: 0,
                            child: Container(
                              height: 22,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                color: primaryColor,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 300,
                            left: 0,
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40),
                                ),
                                color: Colors.pink[100],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 315,
                            left: 0,
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40),
                                ),
                                color: Colors.pink[100],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 330,
                            left: 0,
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(40),
                                ),
                                color: Colors.pink[100],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // price
            Positioned(
              top: 270,
              left: 29,
              child: Text(
                price,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            Positioned(
              top: 120,
              right: 40,
              child: Icon(Icons.favorite_border, size: 32, color: primaryColor),
            ),

            // For add to cart
            Positioned(
              top: 430,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                  ),
                  color: primaryColor,
                ),
                height: 70,
                width: 70,
                child: Icon(Icons.add_circle, color: secondaryColor, size: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned bottomParts(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: primaryColor,
        child: Padding(
          padding: EdgeInsets.only(top: 700, left: 14),
          child: Row(
            children: [
              const SizedBox(width: 30),
              //
              Column(
                children: [
                  Text(
                    'Height',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '40cm - 50cm',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30),
              Column(
                children: [
                  Text(
                    ' Size',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '1kg - 2kg',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 30),
              Column(
                children: [
                  Text(
                    'Temperature',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '18C - 25C',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
