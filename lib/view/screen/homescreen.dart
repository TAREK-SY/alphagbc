import 'package:alphagbc/core/class/crud.dart';
import 'package:alphagbc/view/widget/alphabar.dart';
import 'package:alphagbc/view/widget/Home/fotohomelist.dart';
import 'package:alphagbc/view/widget/Home/texthomelist.dart';
import 'package:alphagbc/view/widget/home/addressworkinghours.dart';
import 'package:alphagbc/view/widget/home/bookonline.dart';
import 'package:alphagbc/view/widget/home/galleryhome.dart';
import 'package:alphagbc/view/widget/home/homeadcard.dart';
import 'package:alphagbc/view/widget/home/homecard.dart';
import 'package:alphagbc/view/widget/home/text1homelist.dart';
import 'package:alphagbc/view/widget/home/text2homelist.dart';
import 'package:alphagbc/view/widget/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(Crud());
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Alphabar(title: "Home"),
      ),
      body: ListView(
        children: const [
          Textlist(),
          Fotohomelist(),
          Text1homelist(),
          Center(
            child: SizedBox(
              width: 1373,
              height: 467,
              child: Row(
                children: [
                  Flexible(
                    child: AspectRatio(
                      aspectRatio:
                          1373 / 467 / 3, // نقسم النسبة على 3 لتوزيع الكروت
                      child: HomeCard(
                        title: 'Custom Software Development',
                        description:
                            'Unlock tailored software solutions that address your specific business needs, from initial concept to implementation,         with a focus on efficiency and scalability.',
                        imagePath:
                            'assets/images/Custom Software Development.png',
                      ),
                    ),
                  ),
                  SizedBox(width: 16), // إضافة مسافة بين الكروت
                  Flexible(
                    child: AspectRatio(
                      aspectRatio: 1373 / 467 / 3,
                      child: HomeCard(
                        title: 'Mobile App Development',
                        description:
                            'Leverage our expertise to create intuitive and innovative mobile applications that resonate with your target audience, incorporating seamless user experiences and cutting-edge technology.',
                        imagePath: 'assets/images/Mobile App Development.png',
                      ),
                    ),
                  ),
                  SizedBox(width: 16), // إضافة مسافة بين الكروت
                  Flexible(
                    child: AspectRatio(
                      aspectRatio: 1373 / 467 / 3,
                      child: HomeCard(
                        title: 'Web Design and Development',
                        description:
                            'Elevate your online presence with custom web designs and robust development, optimizing user interface and experience for increased engagement and conversions.',
                        imagePath:
                            'assets/images/Web Design and Development.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Homeadcard(),
          BookOnline(),
          GalleryHome(
            color: Color.fromARGB(255, 224, 224, 224),
          ),
          Text2homelist(),
          Addressworkinghours(),
          Logo(),
        ],
      ),
    );
  }
}
