import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';

class Textlist extends StatefulWidget {
  const Textlist({super.key});

  @override
  State<Textlist> createState() => _TextlistState();
}

class _TextlistState extends State<Textlist> {
  List hometext = [
    "Unlock Your Programming Potential1",
    "Unlock Your Programming Potential2",
    "Unlock Your Programming Potential3",
    "Unlock Your Programming Potential4",
  ];

  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.5);
    _startAutoScroll();
  }

  void _startAutoScroll() {
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return; // Check if the widget is still mounted

      if (_currentPage < hometext.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      _startAutoScroll(); // Restart the auto-scroll function
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: PageView.builder(
        controller: _pageController,
        itemCount: hometext.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            child: Text(
              hometext[index],
              style: const TextStyle(
                color: AppColor.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                decoration:
                    TextDecoration.none, // Ensure no underline or decoration
              ),
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
    );
  }
}
