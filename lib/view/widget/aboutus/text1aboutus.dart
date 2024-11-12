import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';

class Text1aboutus extends StatelessWidget {
  const Text1aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 224, 224, 224),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Empower your business with innovative technology",
                    style: TextStyle(color: AppColor.green, fontSize: 20),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Unleash your digital potential with cutting-edge solutions",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                      style: TextStyle(fontSize: 15),
                      "As a leading programming and contact creation company, we specialize in delivering cutting-edge solutions to unleash your business's digital potential. Our seasoned team of developers and creators are dedicated to empowering your business with innovative technology that will elevate your online presence. From responsive web design to bespoke software development, we cater to your unique needs with precision and expertise. Let us revolutionize your digital landscape and propel your business to the forefront of the digital era. Partner with us for unparalleled technical ingenuity and unlock the possibilities of digital success."),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
