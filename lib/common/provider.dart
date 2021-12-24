import 'package:get/get_connect/http/src/response/response.dart';

class ProviderConstant {
  ProviderConstant._();

  static const String baseUrl =
      "https://aimedicare-backend.herokuapp.com/api/v1";
  static const int timeOut = 15;
  static const String token = "token";

  static dynamic errorHandler(Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
      case 202:
        var responseJson = response.body.toString();
        return responseJson;
      case 500:
        throw "Server Error pls retry later";
      case 403:
        throw 'Error occurred pls check internet and retry.';
      default:
        throw 'Error occurred retry';
    }
  }
}
