import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';

class GalleryHome extends StatefulWidget {
  const GalleryHome({super.key, required this.color});
  final Color color;
  @override
  GalleryHomeState createState() => GalleryHomeState();
}

class GalleryHomeState extends State<GalleryHome> {
  final List<String> _images = [
    'assets/images/gallery1.jpg',
    'assets/images/gallery2.jpg',
    'assets/images/gallery3.jpg',
    'assets/images/gallery4.jpg',
    'assets/images/gallery5.jpg',
    'assets/images/gallery6.jpg',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color, // Set the background color to light gray

      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Discover everything about us',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: AppColor.green,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Gallery',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 290,
            width: 980, // Set a fixed height for the image row
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
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = (_currentIndex + 1) % _images.length;
                      });
                    },
                    child: Image.asset(
                      _images[(_currentIndex + 1) %
                          _images.length], // Show the next image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
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
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Functionality for "View more" button goes here
            },
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColor.green)),
            child: const Text(
              'View more',
              style: TextStyle(color: AppColor.white),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
