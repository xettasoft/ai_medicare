class HealthModel {
  HealthModel({this.gender, this.height, this.mass});

  final String? gender;
  final String? height;
  final String? mass;

  factory HealthModel.fromJson(Map<String, dynamic> json) => HealthModel(
        gender: json["gender"],
        height: json["height"],
        mass: json["mass"],
      );

  Map<String, String?> toJson() => {
        "gender": gender,
        "height": height,
        "mass": mass,
      };
}
