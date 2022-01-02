class SessionModel {
  SessionModel({
    this.firstTime,
  });

  final bool? firstTime;

  factory SessionModel.fromJson(Map<String, dynamic> json) => SessionModel(
        firstTime: json["firstTime"],
      );

  Map<String, dynamic> toJson() => {
        "firstTime": firstTime,
      };

  SessionModel copyWith({
    bool? firstTime,
  }) {
    return SessionModel(
      firstTime: firstTime ?? this.firstTime,
    );
  }
}
