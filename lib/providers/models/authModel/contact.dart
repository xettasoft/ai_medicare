class ContactModel {
  ContactModel(
      {this.country, this.city, this.street, this.latitude, this.longitude});

  final String? country;
  final String? city;
  final String? street;
  final String? latitude;
  final String? longitude;

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        country: json["country"],
        city: json["city"],
        street: json["street"],
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, String?> toJson() => {
        "country": country,
        "city": city,
        "street": street,
        "latitude": latitude,
        "longitude": longitude,
      };
}
