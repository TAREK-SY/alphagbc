import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';

class Homeadcard extends StatelessWidget {
  const Homeadcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 200, 200, 200),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Tailored to Meet Your Specific Needs",
              style: TextStyle(
                color: AppColor.green,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Customized Coding Solutions",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: AppColor.black),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColor.green),
              ),
              child: const Text(
                "Learn More",
                style: TextStyle(color: AppColor.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
