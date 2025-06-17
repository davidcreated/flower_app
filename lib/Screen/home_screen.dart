import 'package:flutter/material.dart';
import 'package:plant_app/Screen/detailscreen.dart';
import 'package:plant_app/Screen/products.dart';
import 'package:plant_app/Utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(
          context,
        ).size; // makes sure screensize and width matches or fits appropraitely with this screen
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(height: 30),
          Row(children: [sideBar(), bodyParts(size, context)]),
          const Positioned(
            top: 168,
            left: 24,
            child: Text(
              'Plants',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
          Positioned(
            top: 62,
            right: 8,
            child: Icon(Icons.search, color: Colors.black, size: 37),
          ),
        ],
      ),
    );
  }

  Container bodyParts(Size size, BuildContext context) => Container(
    width: size.width * 0.8,
    color: Colors.white,
    child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 100),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => Detailscreen(
                        name: "House Shape \nClose Plant",
                        price: "\$45",
                        image: "assets/images/pink.png",
                      ),
                ),
              );
            },
            child: Hero(
              tag: "flower1",
              child: Products(
                image: "assets/images/pink.png",
                name: "House Shape Close",
                price: "45",
              ),
            ),
          ),
          const Hero(
            tag: "flower2",
            child: Products(
              image: "assets/images/pink2.jpg",
              name: "Glass Water",
              price: "60",
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ),
  );

  Expanded sideBar() {
    return Expanded(
      child: Container(
        color: secondaryColor,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8, top: 70),
              child: Image.asset('assets/images/more.png', width: 20),
            ),
            const SizedBox(height: 60),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text('Green', style: TextStyle(fontSize: 15)),
            ),
            const SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.only(right: 14),
              child: RotatedBox(
                quarterTurns: 3,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: ".",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Shape Class',
                        style: TextStyle(color: primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  "Indoor Plants",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  "Green Plants",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16, top: 110),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: primaryColor,
                ),
                width: 60,
                height: 70,
                child: Icon(Icons.home, color: Colors.white, size: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
