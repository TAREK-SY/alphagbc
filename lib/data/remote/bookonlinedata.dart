import 'package:alphagbc/core/class/crud.dart';
import 'package:alphagbc/linkapi.dart';

class Bookonlinedata {
  Crud crud;
  Bookonlinedata(this.crud);
  postdata(
    String location,
    String service,
    String staffmember,
    String firstname,
    String lastname,
    String emailaddress,
  ) async {
    var response = await crud.postData(AppLink.bookonline, {
      "location": location,
      "service": service,
      "staffmember": staffmember,
      "firstname": firstname,
      "lastname": lastname,
      "emailaddress": emailaddress
    });
    return response.fold((l) => l, (r) => r);
  }
}
