import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:alphagbc/core/class/statusrequest.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    var response = await http.post(Uri.parse(linkurl), body: data);

    if (response.statusCode == 200 || response.statusCode == 201) {
      Map responsebody = jsonDecode(response.body);
      return Right(responsebody);
    } else {
      return const Left(StatusRequest.serverfailure);
    }
  }
}
