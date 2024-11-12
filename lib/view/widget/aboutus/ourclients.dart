import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';

class Ourclients extends StatefulWidget {
  const Ourclients({super.key});

  @override
  State<Ourclients> createState() => OurclientsState();
}

class OurclientsState extends State<Ourclients> {
  final List<String> _images = [
    'assets/images/Our clients1.png',
    'assets/images/Our clients2.png',
    'assets/images/Our clients3.png',
    'assets/images/Our clients4.png',
    'assets/images/Our clients5.png',
    'assets/images/Our clients6.png',
    'assets/images/Our clients7.png',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(
          255, 224, 224, 224), // Set the background color to light gray

      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Our clients',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: AppColor.black,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  textAlign: TextAlign.center,
                  'Our clients benefit from our wide range of IT services, tailored to meet their individual needs \n and requirements',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 65,
          ),
          SizedBox(
            height: 223,
            width: 1490, // Set a fixed height for the image row
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = (_currentIndex - 1 + _images.length) %
                            _images.length;
                      });
                    },
                    child: Image.asset(
                      _images[_currentIndex],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      _images[(_currentIndex + 1) %
                          _images.length], // Show the next image
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      _images[(_currentIndex + 2) %
                          _images.length], // Show the next image
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      _images[(_currentIndex + 3) %
                          _images.length], // Show the next image
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      _images[(_currentIndex + 4) %
                          _images.length], // Show the next image
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = (_currentIndex + 1) % _images.length;
                      });
                    },
                    child: Image.asset(
                      _images[(_currentIndex + 5) %
                          _images.length], // Show the next image
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          // Indicator for the current image
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(_images.length, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                width: 8.0,
                height: 8.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      _currentIndex == index ? AppColor.green : AppColor.gray,
                ),
              );
            }),
          ),
          const SizedBox(
            height: 45,
          )
        ],
      ),
    );
  }
}
