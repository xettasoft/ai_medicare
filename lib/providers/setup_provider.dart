import 'package:ai_medicare/providers/base_provider.dart';
import 'package:ai_medicare/providers/models/authModel/auth_model.dart';
import 'package:get/get.dart';

class SetupProvider extends BaseProvider {
  Future<AuthModel> register(Map body) async {
    Response? res;
    try {
      res = await post("token/", body);
      if (res.statusCode == 200 || res.statusCode == 201) {
        return AuthModel.fromJson(res.body);
      }
      return AuthModel.withError(res.body);
    } catch (e) {
      return AuthModel.withError(res?.body);
    }
  }
}
