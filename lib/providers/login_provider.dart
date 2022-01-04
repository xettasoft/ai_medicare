import 'package:ai_medicare/providers/base_provider.dart';
import 'package:ai_medicare/providers/models/authModel/auth_model.dart';
import 'package:ai_medicare/providers/models/authModel/login_request.dart';
import 'package:get/get.dart';

class LoginProvider extends BaseProvider {
  Future<AuthModel> login(LoginRquest request) async {
    Response? res;
    try {
      res = await post("/users/login", request.toJson());
      print(res.body["contact_info"]);
      if (res.statusCode == 200 || res.statusCode == 201) {
        return AuthModel.fromJson(res.body);
      }
      return AuthModel.withError(res.body);
    } catch (e) {
      return AuthModel.withError({"message": e, "details": "error"});
    }
  }
}
