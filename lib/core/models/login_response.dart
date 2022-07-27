class LoginResponse {
  const LoginResponse({required this.message, required this.userId});
  final String message;
  final String userId;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        message: json['message'] == null ? null : json['message'],
        userId: json['user'] == null ? null : json['user'],
      );

  Map<String, dynamic> toJson() {
    return {'message': message, 'userId': userId};
  }
}
