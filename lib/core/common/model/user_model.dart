class UserModel {
  String? firstName;
  String? lastName;
  String? gender;
  String? dateOfBirth;
  String? profilePic;
  String? city;
  String? countryId;
  String? countryName;
  String? stateId;
  String? stateName;
  String createdBy;

  UserModel({
    this.firstName,
    this.lastName,
    this.gender,
    this.dateOfBirth,
    this.profilePic,
    this.city,
    this.countryId,
    this.countryName,
    this.stateId,
    this.stateName,
    required this.createdBy,
  });

  // Constructor to parse JSON directly
  UserModel.fromJson(Map<String, dynamic> json)
      : firstName = json['firstName'] ?? "",
        lastName = json['lastName'] ?? "",
        gender = json['gender'] ?? "",
        dateOfBirth = json['dateOfBirth'] ?? "",
        profilePic = json['profilePic'] ?? "",
        city = json['city'] ?? "",
        countryId = json['countryId'] ?? "",
        countryName = json['countryName'] ?? "",
        stateId = json['stateId'] ?? "",
        stateName = json['stateName'] ?? "",
        createdBy = json['createdBy'] ?? "";
}
