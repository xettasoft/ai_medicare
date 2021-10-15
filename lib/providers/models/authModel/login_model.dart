

import 'package:ai_medicare/providers/models/generic_model.dart';

class LoginModel extends GenericModel {
  LoginModel({
    this.accessToken,
    this.refreshToken,
    String? detail,
    String? message,
    bool? success,
  }) : super(detail: detail, message: message, success: success);

  final String? accessToken;
  final String? refreshToken;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        accessToken: json["access"],
        refreshToken: json["refresh"],
        message: json["message"],
        detail: json["detail"],
        success: true,
      );

  factory LoginModel.withError(Map<String, dynamic> json) => LoginModel(
      message: json["message"], detail: json["detail"], success: false);
}
