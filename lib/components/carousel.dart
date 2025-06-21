import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; //

class ImageCarousel extends StatelessWidget {
  final List<String> imageUrls;

  ImageCarousel({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.8,
        aspectRatio: 16 / 9,
        autoPlayInterval: Duration(seconds: 3),
      ),
      items: imageUrls.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
