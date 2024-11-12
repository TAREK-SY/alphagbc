import 'package:alphagbc/core/constant/color.dart';
import 'package:flutter/material.dart';

class Servicesourresults extends StatelessWidget {
  Servicesourresults({super.key});

  final List<String> _images = [
    'assets/images/Our results1.png',
    'assets/images/Our results2.png',
    'assets/images/Our results3.png',
    'assets/images/Our results4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Our Results',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: AppColor.black,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  textAlign: TextAlign.center,
                  'We’re proud of what we’ve achieved, but we’re not stopping there.',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 223,
            width: 1000, // Set a fixed height for the image row
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Image.asset(
                  _images[0],
                  fit: BoxFit.fill,
                )),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: Image.asset(
                  _images[1],
                  fit: BoxFit.fill,
                )),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: Image.asset(
                  _images[2],
                  fit: BoxFit.fill,
                )),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: Image.asset(
                  _images[3],
                  fit: BoxFit.fill,
                )),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          ElevatedButton(
            onPressed: () {
              // Save the form data and perform any necessary actions
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(AppColor.green),
            ),
            child: const Text(
              'Explore',
              style: TextStyle(color: AppColor.white),
            ),
          ),
          const SizedBox(
            height: 45,
          )
        ],
      ),
    );
  }
}
