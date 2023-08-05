class User{
  String fullName;
  String userName;
  String password;
  String? email;
  String? phoneNumber;
  String gender,address,birthday;

  User({required this.fullName, required this.userName, required this.password,required this.email,
     required this.phoneNumber, required this.gender, required this.address, required this.birthday});

// factory User.fromJson(Map<String, dynamic> json) {
  //   return User(
  //     id: json['id'],
  //     name: json['name'],
  //   );
  // }
}