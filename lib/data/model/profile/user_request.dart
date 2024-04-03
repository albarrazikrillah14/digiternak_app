class UserRequest {
  String noNIK;
  String name;
  String birthDate;
  String birthPlace;
  bool gender;
  String residence;
  String phoneNumber;
  double bodyHeight;
  double bodyWeight;
  String bloodType;
  String maritalStatus;
  String noNPWP;
  String bankAccountNo;

  UserRequest(
      {this.noNIK = "",
      this.name = "",
      this.birthDate = "",
      this.birthPlace = "",
      this.gender = false,
      this.residence = "",
      this.phoneNumber = "",
      this.bodyWeight = 0.0,
      this.bodyHeight = 0.0,
      this.bloodType = "",
      this.maritalStatus = "",
      this.noNPWP = "",
      this.bankAccountNo = ""});

  UserRequest copyWith({
    String noNIK = "",
    String name = "",
    String birthDate = "",
    String birthPlace = "",
    bool gender = false,
    String residence = "",
    String phoneNumber = "",
    double bodyHeight = 0.0,
    double bodyWeight = 0.0,
    String bloodType = "",
    String maritalStatus = "",
    String noNPWP = "",
    String bankAccountNo = "",
  }) {
    return UserRequest(
        noNIK: noNIK,
        name: name,
        birthDate: birthDate,
        birthPlace: birthPlace,
        gender: gender,
        residence: residence,
        phoneNumber: phoneNumber,
        bodyHeight: bodyHeight,
        bodyWeight: bodyWeight,
        bloodType: bloodType,
        maritalStatus: maritalStatus,
        noNPWP: noNPWP,
        bankAccountNo: bankAccountNo);
  }
}
