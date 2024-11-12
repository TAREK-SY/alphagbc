import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';

class Addressworkinghours extends StatelessWidget {
  const Addressworkinghours({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final containerWidth = constraints.maxWidth / 2;
        return Row(
          children: [
            Expanded(
              child: Container(
                width: containerWidth,
                color: const Color.fromARGB(255, 224, 224, 224),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 61.5),
                  child: Column(
                    children: [
                      Text(
                        "Address",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "We're excited to meet you! Feel free to get in touch with us \n within these working hours.",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(fontSize: 30, color: AppColor.green),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "zccvvb@gmail.com",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Phone",
                        style: TextStyle(fontSize: 30, color: AppColor.green),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "4566788999",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Address",
                        style: TextStyle(fontSize: 30, color: AppColor.green),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Strand, London WC2R 2LS, UK",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: containerWidth,
                color: const Color.fromARGB(255, 188, 226, 214),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Working hours",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Monday",
                              style: TextStyle(
                                  color: AppColor.green, fontSize: 25)),
                          SizedBox(
                            width: 25,
                          ),
                          Text("09 : 00am - 07 : 30pm",
                              style: TextStyle(
                                  color: AppColor.green, fontSize: 15)),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Tuesday",
                              style: TextStyle(
                                  color: AppColor.green, fontSize: 25)),
                          SizedBox(
                            width: 25,
                          ),
                          Text("09 : 00am - 07 : 30pm",
                              style: TextStyle(
                                  color: AppColor.green, fontSize: 15)),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Wednesday",
                              style: TextStyle(
                                  color: AppColor.green, fontSize: 25)),
                          SizedBox(
                            width: 25,
                          ),
                          Text("09 : 00am - 07 : 30pm",
                              style: TextStyle(
                                  color: AppColor.green, fontSize: 15)),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Thursday",
                              style: TextStyle(
                                  color: AppColor.green, fontSize: 25)),
                          SizedBox(
                            width: 25,
                          ),
                          Text("09 : 00am - 07 : 30pm",
                              style: TextStyle(
                                  color: AppColor.green, fontSize: 15)),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Friday",
                              style: TextStyle(
                                  color: AppColor.green, fontSize: 25)),
                          SizedBox(
                            width: 25,
                          ),
                          Text("09 : 00am - 07 : 30pm",
                              style: TextStyle(
                                  color: AppColor.green, fontSize: 15)),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Saturday",
                              style: TextStyle(
                                  color: AppColor.green, fontSize: 25)),
                          SizedBox(
                            width: 25,
                          ),
                          Text("09 : 00am - 07 : 30pm",
                              style: TextStyle(
                                  color: AppColor.green, fontSize: 15)),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sunday",
                              style: TextStyle(
                                  color: AppColor.green, fontSize: 25)),
                          SizedBox(
                            width: 25,
                          ),
                          Text("09 : 00am - 07 : 30pm",
                              style: TextStyle(
                                  color: AppColor.green, fontSize: 15)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
