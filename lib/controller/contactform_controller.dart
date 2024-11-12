import 'package:alphagbc/core/class/statusrequest.dart';
import 'package:alphagbc/core/functions/handingdatacontroller.dart';
import 'package:alphagbc/data/remote/contactformdata.dart';
import 'package:get/get.dart';

abstract class ContactformController extends GetxController {
  contactform();
}

class ContactformControllerImp extends ContactformController {
  late String firstname;
  late String lastname;
  late String emailaddress;
  late String phone;
  late String notes;

  StatusRequest statusRequest = StatusRequest.none;

  Contactformdata contactformdata = Contactformdata(Get.find());

  List data = [];

  @override
  contactform() async {
    var response = await contactformdata.postdata(
        firstname, lastname, emailaddress, phone, notes);
    statusRequest = handlingData(response);
    update();
  }
}
