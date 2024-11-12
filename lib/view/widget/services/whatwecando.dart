import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';

class Whatwecando extends StatelessWidget {
  const Whatwecando({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "What we can do",
                style: TextStyle(color: AppColor.green, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Our services",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                  "Unlock tailored software solutions that address your specific business needs, from initial concept to implementation, with a focus on efficiency and scalability.",
                  style: TextStyle(fontSize: 15)),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Custom Software Development",
                style: TextStyle(
                  color: AppColor.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  "Unlock tailored software solutions that address your specific business needs, from initial concept to implementation, with a focus on efficiency and scalability.",
                  style: TextStyle(fontSize: 15)),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Mobile App Development",
                style: TextStyle(
                  color: AppColor.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  "Leverage our expertise to create intuitive and innovative mobile applications that resonate with your target audience, incorporating seamless user experiences and cutting-edge technology.",
                  style: TextStyle(fontSize: 15)),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Web Design and Development",
                style: TextStyle(
                  color: AppColor.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  "Elevate your online presence with custom web designs and robust development, optimizing user interface and experience for increased engagement and conversions.",
                  style: TextStyle(fontSize: 15)),
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
                  'BOOK NOW',
                  style: TextStyle(color: AppColor.white),
                ),
              )
            ],
          )),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/Services1.jpg",
                height: 590,
                fit: BoxFit.fill,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
