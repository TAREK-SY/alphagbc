import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const HomeCard({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.white,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.green),
                ),
                const SizedBox(height: 8),
                Text(description,
                    style: const TextStyle(
                      fontSize: 15,
                    )),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Image.asset(
            imagePath,
            fit: BoxFit.fill,
            height: 284,
            width: 410,
          ),
        ],
      ),
    );
  }
}
