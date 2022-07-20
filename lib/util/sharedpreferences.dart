import 'package:shared_preferences/shared_preferences.dart';
import 'package:cryptowatch/models/user_model.dart';
import 'dart:async';

class UserPreferences {
  Future<bool> saveUser(User user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setInt("userId", user.userId);
    prefs.setString("email", user.email);
    prefs.setString("password", user.password);
    prefs.setString("jwt", user.jwt);


    return prefs.commit();
  }

  Future<User> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    int userId = prefs.getInt("userId");
    String email = prefs.getString("email");
    String password = prefs.getString("password");
    String jwt = prefs.getString("jwt");

    return User(
        userId: userId,
        email: email,
        password: password,
        jwt: jwt,
    );
  }

  void removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.remove("email");
    prefs.remove("password");
    prefs.remove("jwt");
  }

  Future<String> getToken(args) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString("jwt");
    return token;
  }
}