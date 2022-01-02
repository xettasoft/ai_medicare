import 'package:ai_medicare/providers/models/authModel/contact.dart';
import 'package:ai_medicare/providers/models/authModel/health.dart';

class UserModel {
  UserModel(
      {this.id,
      this.firstName,
      this.email,
      this.createdAT,
      this.isVerified,
      this.lastLogin,
      this.lastName,
      this.phoneNumber,
      this.emergencyPhoneNumber,
      this.photo,
      this.status,
      this.health,
      this.contact});

  final int? id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phoneNumber;
  final String? emergencyPhoneNumber;
  final String? status;
  final String? photo;
  final bool? isVerified;
  final String? createdAT;
  final String? lastLogin;
  final HealthModel? health;
  final ContactModel? contact;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        emergencyPhoneNumber: json["emergency_number"],
        status: json["account_status"],
        photo: json["profile_image"],
        isVerified: json["is_email_verified"],
        createdAT: json["created_at"],
        lastLogin: json["last_login"],
        health: HealthModel.fromJson(json["health_info"]),
        contact: ContactModel.fromJson(json["contact_info"]),
      );

  Map<String, dynamic> toJson(String? password) => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone_number": phoneNumber,
        "emergency_number": emergencyPhoneNumber,
        "profile_image": photo,
        "password": password,
        "health_info": health?.toJson(),
        "contact_info": contact?.toJson(),
      };
}
