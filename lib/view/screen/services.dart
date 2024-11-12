import 'package:alphagbc/view/widget/alphabar.dart';
import 'package:alphagbc/view/widget/logo.dart';
import 'package:alphagbc/view/widget/services/pricelist.dart';
import 'package:alphagbc/view/widget/services/servicesourresults.dart';
import 'package:alphagbc/view/widget/services/whatourclientssay.dart';
import 'package:alphagbc/view/widget/services/whatwecando.dart';
import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => ServicesState();
}

class ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Alphabar(title: "Services"),
      ),
      body: ListView(
        children: [
          const Whatwecando(),
          const Pricelist(),
          Servicesourresults(),
          const WhatOurClientsSay(),
          const Logo(),
        ],
      ),
    );
  }
}
