class User {
  String fullName;
  String userName;
  String password;
  String? email;
  String? phoneNumber;
  String gender;
  String address;
  String birthday;

  User({
    required this.fullName,
    required this.userName,
    required this.password,
    this.email,
    this.phoneNumber,
    required this.gender,
    required this.address,
    required this.birthday,
  });

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'userName': userName,
      'password': password,
      'email': email,
      'phoneNumber': phoneNumber,
      'gender': gender,
      'address': address,
      'birthday': birthday,
    };
  }
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      fullName: json['fullName'],
      userName: json['userName'],
      password: json['password'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      gender: json['gender'],
      address: json['address'],
      birthday: json['birthday'],
    );
  }
}
