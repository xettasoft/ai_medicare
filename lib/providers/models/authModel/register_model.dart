
import 'package:ai_medicare/providers/models/generic_model.dart';

class RegisterModel extends GenericModel {
  RegisterModel({
    String? detail,
    String? message,
    bool? success,
  }) : super(detail: detail, message: message, success: success);

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        message: json["message"],
        detail: json["detail"],
        success: true,
      );

  factory RegisterModel.withError(Map<String, dynamic> json) => RegisterModel(
      message: json.toString(), detail: json["detail"], success: false);
}
