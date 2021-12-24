import 'package:ai_medicare/providers/models/appointmentModels/appointment.dart';
import 'package:ai_medicare/providers/models/generic_model.dart';

class AppointmentsModel extends GenericModel {
  AppointmentsModel({
    this.appointments,
    String? detail,
    String? message,
    bool? success,
  }) : super(detail: detail, message: message, success: success);

  final List<AppointmentModel>? appointments;

  factory AppointmentsModel.fromJson(Map<String, dynamic> json) =>
      AppointmentsModel(
        appointments:
            AppointmentListModel.fromJson(json["account_info"]).appointments,
        message: json["message"],
        detail: json["detail"],
        success: true,
      );

  factory AppointmentsModel.withError(Map<String, dynamic> json) =>
      AppointmentsModel(
          message: json["message"], detail: json["detail"], success: false);
}
