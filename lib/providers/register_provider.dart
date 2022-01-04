import 'package:ai_medicare/providers/base_provider.dart';
import 'package:ai_medicare/providers/models/authModel/auth_model.dart';
import 'package:ai_medicare/providers/models/authModel/register_request.dart';
import 'package:get/get.dart';

class RegisterProvider extends BaseProvider {
  Future<AuthModel> register(RegisterRquest request) async {
    Response? res;
    print(request.toJson());
    try {
      res = await post("/users", request.toJson());
      if (res.statusCode == 200 || res.statusCode == 201) {
        return AuthModel.fromJson(res.body);
      }
      return AuthModel.withError(res.body);
    } catch (e) {
      return AuthModel.withError({"message": e, "details": "error"});
    }
  }
}
