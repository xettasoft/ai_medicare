class AppointmentModel {
  AppointmentModel({
    this.doctor,
    this.date,
  });

  final int? doctor;
  final DateTime? date;

  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      AppointmentModel(
        doctor: json["doctor"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "doctor": doctor,
        "date": date,
      };
}

class AppointmentListModel {
  AppointmentListModel({
    this.appointments,
  });

  final List<AppointmentModel>? appointments;

  factory AppointmentListModel.fromJson(Map<String, dynamic> json) =>
      AppointmentListModel(
          appointments:
              List<AppointmentModel>.from(json["data"].map((e) => e)));
}
