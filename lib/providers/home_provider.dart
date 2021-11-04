import 'package:ai_medicare/providers/base_provider.dart';
import 'package:ai_medicare/providers/models/authModel/login_model.dart';
import 'package:get/get.dart';

class HomeProvider extends BaseProvider {
  Future<LoginModel> register(Map body) async {
    Response? res;
    try {
      res = await post("token/", body);
      if (res.statusCode == 200 || res.statusCode == 201) {
        return LoginModel.fromJson(res.body);
      }
      return LoginModel.withError(res.body);
    } catch (e) {
      return LoginModel.withError(res?.body);
    }
  }
}
