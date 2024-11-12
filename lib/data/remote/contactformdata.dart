import 'package:alphagbc/core/class/crud.dart';
import 'package:alphagbc/linkapi.dart';

class Contactformdata {
  Crud crud;
  Contactformdata(this.crud);
  postdata(
    String firstname,
    String lastname,
    String emailaddress,
    String phone,
    String notes,
  ) async {
    var response = await crud.postData(AppLink.contactform, {
      "firstname": firstname,
      "lastname": lastname,
      "emailaddress": emailaddress,
      "phone": phone,
      "notes": notes
    });
    return response.fold((l) => l, (r) => r);
  }
}
