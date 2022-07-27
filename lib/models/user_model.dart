
class User {
   String? message;
  String? token;
  String? userId;
 

  User({this.userId, this.token, this.message,});

  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
        message: responseData['message'],
        token: responseData['token'],
        userId: responseData['id'],
    );
  }
}