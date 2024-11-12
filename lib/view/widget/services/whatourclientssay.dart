import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';

class WhatOurClientsSay extends StatefulWidget {
  const WhatOurClientsSay({super.key});

  @override
  State<WhatOurClientsSay> createState() => _WhatOurClientsSayState();
}

class _WhatOurClientsSayState extends State<WhatOurClientsSay> {
  final List<String> clientImages = [
    'assets/images/Dina_Maro.jpg',
    'assets/images/william_brown.jpg',
    'assets/images/Emma Stone.jpg',
    'assets/images/David Smith.jpg',
    // يمكنك إضافة المزيد من الصور
  ];

  final List<String> clientNames = [
    'Dina Maro',
    'William Brown',
    "Emma Stone",
    "David Smith"

    // يمكنك إضافة المزيد من الأسماء
  ];

  final List<String> clientTitles = [
    'Happy User',
    'Impressed Business Owner',
    "Grateful Customer",
    "Satisfied Client"
    // يمكنك إضافة المزيد من الصفات
  ];

  final List<String> clientComments = [
    'The contact creation company\'s programming skills are exceptional. The system they developed for us is intuitive and has significantly improved our workflow. Highly recommended!',
    'The programming company\'s contact creation solution exceeded our expectations. Their attention to detail and ability to understand our specific needs resulted in a tailored and effective product.',
    "The programming and contact creation company delivered a seamless and high-quality system for us. Their professionalism and responsiveness were truly impressive. A pleasure to work with!",
    "The programming company developed a robust and user-friendly contact creation system for our business. Their expertise and excellent customer service made the whole experience smooth and efficient."

    // يمكنك إضافة المزيد من التعليقات
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 224, 224, 224),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What our clients say",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              children: [
                IconButton(
                  color: AppColor.green,
                  onPressed: () {
                    setState(() {
                      _currentIndex =
                          (_currentIndex - 1 + clientImages.length) %
                              clientImages.length;
                    });
                  },
                  icon: const Icon(Icons.arrow_back_ios_sharp),
                ),
                const SizedBox(
                  width: 25,
                ),
                Expanded(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 120,
                      width: 530,
                      child: Text(
                        clientComments[_currentIndex],
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 90,
                          width: 90,
                          child: CircleAvatar(
                            backgroundColor: AppColor.green,
                            child: ClipOval(
                              child: Image.asset(
                                clientImages[_currentIndex],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              clientNames[_currentIndex],
                              style: const TextStyle(
                                  color: AppColor.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              clientTitles[_currentIndex],
                              style: const TextStyle(fontSize: 17),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                )),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: Column(
                  children: [
                    SizedBox(
                      width: 530,
                      height: 120,
                      child: Text(
                        clientComments[
                            (_currentIndex + 1) % clientComments.length],
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 90,
                          width: 90,
                          child: CircleAvatar(
                            backgroundColor: AppColor.green,
                            child: ClipOval(
                              child: Image.asset(
                                clientImages[(_currentIndex + 1) %
                                    clientImages
                                        .length], // Show the next image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              clientNames[
                                  (_currentIndex + 1) % clientNames.length],
                              style: const TextStyle(
                                  color: AppColor.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              clientTitles[
                                  (_currentIndex + 1) % clientTitles.length],
                              style: const TextStyle(fontSize: 17),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                )),
                const SizedBox(
                  width: 25,
                ),
                IconButton(
                  color: AppColor.green,
                  onPressed: () {
                    setState(() {
                      _currentIndex = (_currentIndex + 1) % clientImages.length;
                    });
                  },
                  icon: const Icon(Icons.arrow_forward_ios_sharp),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            // Indicator for the current image
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(clientImages.length, (index) {
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
          ],
        ),
      ),
    );
  }
}
