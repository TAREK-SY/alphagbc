import 'package:alphagbc/view/widget/ContactUs/contactform.dart';
import 'package:alphagbc/view/widget/alphabar.dart';
import 'package:alphagbc/view/widget/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/crud.dart';

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => ContactusState();
}

class ContactusState extends State<Contactus> {
  @override
  Widget build(BuildContext context) {
    Get.put(Crud());
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Alphabar(title: "Contact Us"),
      ),
      body: ListView(
        children: const [
          ContactForm(),
          Logo(),
        ],
      ),
    );
  }
}
