import 'package:ai_medicare/common/provider.dart';
import 'package:ai_medicare/providers/shared_preference_helper.dart';
import 'package:get/get_connect.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() async {
    // add your local storage here to load for every request
    var token =
        await SharedPreferenceHelper(SharedPreferences.getInstance()).authToken;
    httpClient.baseUrl = ProviderConstant.baseUrl;
    httpClient.defaultContentType = "application/json";
    httpClient.timeout = const Duration(seconds: ProviderConstant.timeOut);
    // httpClient.addResponseModifier((request, response) async {
    //   print("request");
    //   return response;
    // });
    httpClient.addRequestModifier((Request request) async {
      // add request here
      return request;
    });
    var headers = {'Authorization': "Bearer $token"};
    httpClient.addAuthenticator((Request request) async {
      request.headers.addAll(headers);
      return request;
    });

    super.onInit();
  }
}
