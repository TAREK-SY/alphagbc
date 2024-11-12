import 'package:alphagbc/view/widget/aboutus/ourresults.dart';
import 'package:alphagbc/view/widget/aboutus/ourclients.dart';
import 'package:alphagbc/view/widget/aboutus/text1aboutus.dart';
import 'package:alphagbc/view/widget/alphabar.dart';
import 'package:alphagbc/view/widget/home/galleryhome.dart';
import 'package:alphagbc/view/widget/logo.dart';
import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => AboutusState();
}

class AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Alphabar(title: "About Us"),
      ),
      body: ListView(
        children: [
          Image.asset(
            "assets/images/about us1.webp",
            fit: BoxFit.fill,
            height: 236,
            width: 1524,
          ),
          const Text1aboutus(),
          const OurResults(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Container(
              color: const Color.fromARGB(255, 224, 224, 224),
              height: 275,
              width: 1500,
              child: const Center(
                child: Text(
                  "Unleash your digital potential with cutting-edge solutions",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const GalleryHome(
            color: Colors.white,
          ),
          const Ourclients(),
          const Logo(),
        ],
      ),
    );
  }
}
