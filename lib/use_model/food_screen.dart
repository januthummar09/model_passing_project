import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  List imageData = [
    "assets/images/pink.png",
    "assets/images/red.png",
    "assets/images/pink.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Keep pageview position demo')),
      body: Center(
        child: CarouselSlider.builder(
          options: CarouselOptions(
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 1.0,
            initialPage: 2,
          ),
          itemCount: 3,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
            
                  Container(
            color: Colors.pink,
            width: double.infinity,
            child: Center(
              child:
              
               Text(
                itemIndex.toString(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
