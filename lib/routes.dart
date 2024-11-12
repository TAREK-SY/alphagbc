import 'package:alphagbc/core/constant/routes.dart';
import 'package:alphagbc/view/screen/aboutus.dart';

import 'package:alphagbc/view/screen/contactus.dart';
import 'package:alphagbc/view/screen/homescreen.dart';
import 'package:alphagbc/view/screen/services.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Homescreen()),
  GetPage(name: AppRoute.aboutus, page: () => const Aboutus()),
  GetPage(name: AppRoute.services, page: () => const Services()),
  GetPage(name: AppRoute.contactus, page: () => const Contactus()),
];
