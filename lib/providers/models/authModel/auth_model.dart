import 'package:ai_medicare/providers/models/authModel/contact.dart';
import 'package:ai_medicare/providers/models/authModel/tokens.dart';
import 'package:ai_medicare/providers/models/authModel/user.dart';
import 'package:ai_medicare/providers/models/generic_model.dart';

class AuthModel extends GenericModel {
  AuthModel({
    this.user,
    this.tokens,
    this.contact,
    String? detail,
    String? message,
    bool? success,
  }) : super(detail: detail, message: message, success: success);

  final TokenModel? tokens;
  final UserModel? user;
  final ContactModel? contact;

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        user: UserModel.fromJson(json["account_info"]),
        tokens: TokenModel.fromJson(json["tokens"]),
        contact: ContactModel.fromJson(json["contact_info"]),
        message: json["message"],
        detail: json["detail"],
        success: true,
      );

  Map<String, dynamic>? toJson(String? password) =>
      user?.toJson(password, contact);

  factory AuthModel.withError(Map<String, dynamic> json) => AuthModel(
      message: json["message"], detail: json["detail"], success: false);
}
