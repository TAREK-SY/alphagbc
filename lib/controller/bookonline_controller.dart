import 'package:alphagbc/core/class/statusrequest.dart';
import 'package:alphagbc/core/functions/handingdatacontroller.dart';
import 'package:alphagbc/data/remote/bookonlinedata.dart';
import 'package:get/get.dart';

abstract class BookonlineController extends GetxController {
  bookonline();
}

class BookonlineControllerImp extends BookonlineController {
  late String location;
  late String service;
  late String staffmember;
  late String firstname;
  late String lastname;
  late String emailaddress;

  StatusRequest statusRequest = StatusRequest.none;

  Bookonlinedata bookonlinedata = Bookonlinedata(Get.find());

  List data = [];

  @override
  bookonline() async {
    var response = await bookonlinedata.postdata(
        location, service, staffmember, firstname, lastname, emailaddress);
    statusRequest = handlingData(response);
    update();
  }
}
