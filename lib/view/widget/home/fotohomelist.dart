import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Fotohomelist extends StatefulWidget {
  const Fotohomelist({super.key});

  @override
  State<Fotohomelist> createState() => _FotohomelistState();
}

class _FotohomelistState extends State<Fotohomelist> {
  final List<String> imagePaths = [
    'assets/images/Home1.webp', // استبدل بمسارات صورك المحلية
    'assets/images/Home2.webp',
    'assets/images/Home3.webp',
  ];

  final List<String> texts = [
    "Unlock Your Programming Potential1",
    "Unlock Your Programming Potential2",
    "Unlock Your Programming Potential3",
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 1520,
        height: 576,
        child: CarouselSlider(
          items: imagePaths.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.4), // طبقة شفافة
                      ),
                      Center(
                        child: Text(
                          texts[_current],
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration
                                .none, // Ensure no underline or decoration
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            enlargeCenterPage: true,
            aspectRatio: 1520 / 576,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
