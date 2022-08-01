class User {
  String? _message;
  String? _token;
  String? _userId;

  User({String? message, String? token, String? userId}) {
    if (message != null) {
      this._message = message;
    }
    if (token != null) {
      this._token = token;
    }
    if (userId != null) {
      this._userId = userId;
    }
  }

  String? get message => _message;
  set message(String? message) => _message = message;
  String? get token => _token;
  set token(String? token) => _token = token;
  String? get userId => _userId;
  set userId(String? userId) => _userId = userId;

  User.fromJson(Map<String, dynamic> json) {
    _message = json['message'];
    _token = json['token'];
    _userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this._message;
    data['token'] = this._token;
    data['userId'] = this._userId;
    return data;
  }
}
