import 'dart:async';

import 'package:cryptowatch/core/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  Future<bool> saveUser(User user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    //whoever first did this didn't use null safety shared preferences so i had to migrate to one that supported it and made changes here
    prefs.setString("userId", user.userId!);
    prefs.setString("token", user.token!);


    return prefs.commit();
  }

  Future<User> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();


    //i don't know exactly what userId and token is supposed to look like but this are methods return nullable values so i had to handle that too, you should probably look it over and make changes to all these to make it support null safety
    String userId = prefs.getString("userId") ?? '';
    String token = prefs.getString("token") ?? '';
 
    return User(
        userId: userId,
        token: token,
    );
  }

  void removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();


    prefs.remove("token");
  }

  Future<String> getToken(args) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString("token") ?? '';
    return token;
  }
}