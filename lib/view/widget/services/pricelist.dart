import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';

class Pricelist extends StatelessWidget {
  const Pricelist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 224, 224, 224),
      child: Padding(
        padding: const EdgeInsets.all(
          40.0,
        ),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Price list",
                style: TextStyle(color: AppColor.green, fontSize: 25),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Services",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Custom Website Development",
                            style: TextStyle(
                              color: AppColor.green,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "100 USD",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 115,
                        width: 500,
                        child: Text(
                            "Tailored website solutions built to your specifications, ensuring a unique online presence that meets your  business objectives efficiently and effectively.",
                            style: TextStyle(fontSize: 20)),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Mobile App Development",
                            style: TextStyle(
                              color: AppColor.green,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          Text(
                            "100 USD",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 115,
                        width: 500,
                        child: Text(
                            "Bespoke mobile application creation to address your specific business needs, delivering a user-friendly interface and unique functionality for your target audience.",
                            style: TextStyle(fontSize: 20)),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "UI/UX Design Consultation",
                            style: TextStyle(
                              color: AppColor.green,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 85,
                          ),
                          Text(
                            "100 USD",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 115,
                        width: 500,
                        child: Text(
                            "Consultation services for crafting intuitive user interfaces and experiences, ensuring your digital products engage and delight your target audience effectively.",
                            style: TextStyle(fontSize: 20)),
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "E-commerce Platform Setup",
                            style: TextStyle(
                              color: AppColor.green,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 220,
                          ),
                          Text(
                            "100 USD",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 115,
                        width: 500,
                        child: Text(
                            "Professional setup of e-commerce platforms, including payment gateways and inventory management, for seamless online selling and transaction processing.",
                            style: TextStyle(fontSize: 20)),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Text(
                            "Database Design and Optimization",
                            style: TextStyle(
                              color: AppColor.green,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          Text(
                            "100 USD",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 115,
                        width: 500,
                        child: Text(
                            "Expertly designed and optimized databases, ensuring efficient data storage and retrieval, and enhancing system performance for your application.",
                            style: TextStyle(fontSize: 20)),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Text(
                            "Content Management System Integration",
                            style: TextStyle(
                              color: AppColor.green,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "100 USD",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 115,
                        width: 500,
                        child: Text(
                            "Integrate a robust content management system into your website, allowing seamless content creation and publishing, ensuring an engaging user experience.",
                            style: TextStyle(fontSize: 20)),
                      ),
                    ],
                  )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  // Save the form data and perform any necessary actions
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(AppColor.green),
                ),
                child: const Text(
                  'BOOK',
                  style: TextStyle(color: AppColor.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
