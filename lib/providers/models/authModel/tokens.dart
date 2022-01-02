class TokenModel {
  TokenModel({
    this.accessToken,
    this.refreshToken,
  });

  final String? accessToken;
  final String? refreshToken;

  factory TokenModel.fromJson(Map<String, dynamic> json) => TokenModel(
        accessToken: json["accessToken"],
        refreshToken: json["refreshToken"],
      );

  Map<String, dynamic> toJson() => {
        "accessToken": accessToken,
        "refreshToken": refreshToken,
      };
}
