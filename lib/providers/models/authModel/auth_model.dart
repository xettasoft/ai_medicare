import 'package:ai_medicare/providers/models/authModel/tokens.dart';
import 'package:ai_medicare/providers/models/authModel/user.dart';
import 'package:ai_medicare/providers/models/generic_model.dart';

class AuthModel extends GenericModel {
  AuthModel({
    this.user,
    this.tokens,
    String? detail,
    String? message,
    bool? success,
  }) : super(detail: detail, message: message, success: success);

  final TokenModel? tokens;
  final UserModel? user;

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        user: UserModel.fromJson(json["account_info"]),
        tokens: TokenModel.fromJson(json["tokens"]),
        message: json["message"],
        detail: "",
        success: true,
      );

  Map<String, dynamic>? toJson(String? password) => {
        "account_info": user?.toJson(password),
        "tokens": tokens?.toJson(),
        "message": message
      };

  factory AuthModel.withError(Map<String, dynamic> json) => AuthModel(
      message: json["message"], detail: json["detail"], success: false);
}
