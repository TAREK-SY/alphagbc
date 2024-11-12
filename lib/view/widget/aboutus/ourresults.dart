import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';

class OurResults extends StatelessWidget {
  const OurResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        color: const Color.fromARGB(255, 212, 239, 230),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 32.0),
            const Text(
              'Our Results',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "We're proud of what we've achieved, but we're not stopping there.",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/experience.png',
                      width: 76,
                      height: 76.0,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      "5",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'years of experience',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.green,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/happy_clients.png',
                      width: 76,
                      height: 76.0,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      "100%",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'happy clients',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.green,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/events.png',
                      width: 76,
                      height: 76.0,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      "50+",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'events hosted',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.green,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/projects.png',
                        width: 76,
                        height: 76.0,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        "230",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'projects completed',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.green,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/reviews.png',
                        width: 76,
                        height: 76.0,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        "2380",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'reviews submitted',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.green,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/coffee.png',
                        width: 76,
                        height: 76.0,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        "100%",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'cups of coffee',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.green,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
