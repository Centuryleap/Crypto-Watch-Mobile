
class User {
  int? userId;
  String? email;
  String? password;
  String? jwt;

  User({this.userId, this.email, this.password, this.jwt});

  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
        userId: responseData['id'],
        email: responseData['email'],
        password: responseData['password'],
        jwt: responseData['jwt'],
    );
  }
}