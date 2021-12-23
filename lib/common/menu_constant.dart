class MenuData {
  MenuData._();

  static const List<Map<String, String>> data = [
    {
      "name": "Symptopm Checker",
      "image": "assets/images/svg/symptom.svg",
      "primary": "yes",
      "route": "/symptomCheck"
    },
    {
      "name": "Medications",
      "image": "assets/images/svg/rx-icon.svg",
      "primary": "no",
      "route": "/medications"
    },
    {
      "name": "My Doctors",
      "image": "assets/images/svg/myDoctor.svg",
      "primary": "no",
      "route": "/myDoctors"
    },
    {
      "name": "Hospital",
      "image": "assets/images/svg/rx-icon.svg",
      "primary": "no",
      "route": "/hospital"
    },
    {
      "name": "Pharmacies",
      "image": "assets/images/svg/pharmacy.svg",
      "primary": "no",
      "route": "/pharmacy"
    },
    {
      "name": "Medical Lab",
      "image": "assets/images/svg/lab-icon.svg",
      "primary": "no",
      "route": "/lab"
    },
  ];
}
