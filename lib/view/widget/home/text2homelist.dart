import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';

class Text2homelist extends StatefulWidget {
  const Text2homelist({super.key});

  @override
  Text2homelistState createState() => Text2homelistState();
}

class Text2homelistState extends State<Text2homelist> {
  final List<String> _texts = [
    "Innovation starts with code, and we're the masters of creation in the digital realm.",
    "Innovation starts with code, and we're the ",
    "Innovation starts with code, and ",
  ];
  final List<String> _texts2 = [
    "Alex Carter",
    "Alex ",
    "Carter",
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 212, 239, 230),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 75,
            ),
            Center(
              child: Text(
                _texts[_currentIndex],
                style: const TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                _texts2[_currentIndex],
                style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: AppColor.green),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    setState(() {
                      _currentIndex = (_currentIndex - 1) % _texts.length;
                    });
                  },
                ),
                const SizedBox(width: 20.0),
                Row(
                  children: List.generate(_texts.length, (index) {
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? const Color(0xFF00AE9F)
                            : Colors.grey.withOpacity(0.5),
                      ),
                    );
                  }),
                ),
                const SizedBox(width: 20.0),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: () {
                    setState(() {
                      _currentIndex = (_currentIndex + 1) % _texts.length;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
