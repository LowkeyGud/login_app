class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String password;

  UserModel({
    this.id,
    required this.email,
    required this.password,
    required this.fullName,
  });

  toJson() {
    return {
      "FullName": fullName,
      "Email": email,
      "Password": password,
    };
  }
}
