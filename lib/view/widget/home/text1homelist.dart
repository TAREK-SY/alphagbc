import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';

class Text1homelist extends StatelessWidget {
  const Text1homelist({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 90.0),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Start text from the left
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "What we can do",
            style: TextStyle(
              fontSize: 25,
              color: AppColor.green,
              decoration:
                  TextDecoration.none, // Ensure no underline or decoration
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Our services",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: AppColor.black,
              decoration:
                  TextDecoration.none, // Ensure no underline or decoration
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Unlock tailored software solutions that address your specific business needs, from initial concept to implementation, with a focus on efficiency and scalability.",
            style: TextStyle(
              fontSize: 20,
              color: AppColor.black,
              decoration:
                  TextDecoration.none, // Ensure no underline or decoration
            ),
          ),
        ],
      ),
    );
  }
}
