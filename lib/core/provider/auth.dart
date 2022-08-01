
import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'dart:io';
import 'package:cryptowatch/app/util/appUrl.dart';
import 'package:cryptowatch/app/util/sharedpreferences.dart';
import 'package:cryptowatch/core/models/response_model.dart';
import 'package:cryptowatch/core/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';



enum Status {
  NotLoggedIn,
  NotRegistered,
  LoggedIn,
  Registered,
  Authenticating,
  Registering,
  LoggedOut
}

class AuthProvider with ChangeNotifier {
  Status _loggedInStatus = Status.NotLoggedIn;
  Status _registeredInStatus = Status.NotRegistered;

  Status get loggedInStatus => _loggedInStatus;
  Status get registeredInStatus => _registeredInStatus;

  Future<Map<String, dynamic>> login(String email, String password) async {
    var result;

    final Map<String, dynamic> loginData = {
      'email': email,
      'password': password
    };

    _loggedInStatus = Status.Authenticating;
    notifyListeners();

    Response response = await post(
      Uri.parse(AppUrl.login),
      body: json.encode(loginData),
      headers: {
        'Content-Type': 'application/json'
      },
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);

      User authUser = User.fromJson(responseData);

      UserPreferences().saveUser(authUser);

      _loggedInStatus = Status.LoggedIn;
      notifyListeners();

      result = {
        'status': true,
        'message': 'Successful',
        'user': authUser
      };
    } else {
      _loggedInStatus = Status.NotLoggedIn;
      notifyListeners();
      result = {
        'status': false,
        'message': json.decode(response.body)["message"]
      };
    }
    return result;
  }

  Future<ResponseModel> register(String email, String password, String confirmPassword) async {
    late ResponseModel responseModel;
    final Map<String, dynamic> registrationData = {
      'email': email,
      'password': password,
      'confirmpassword': confirmPassword,
    };
    print(registrationData);
    Response response = await post(Uri.parse(AppUrl.register), body: json.encode(registrationData), headers: {
      'Content-Type': 'application/json'
    });
print(response.statusCode);
    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      var data = responseData["data"];
      _loggedInStatus = Status.LoggedIn;
      notifyListeners();
      responseModel = ResponseModel(true, "Registered Succesfully");
    } else {
      responseModel = ResponseModel(false, json.decode(response.body)["message"]);
    }

    return responseModel;
  }

  static Future<FutureOr> onValue(Response response) async {
    var result;
    final Map<String, dynamic> responseData = json.decode(response.body);

    print(response.statusCode);
    if (response.statusCode==200) {
      var userData = responseData['data'];

      User authUser = User.fromJson(userData);

      UserPreferences().saveUser(authUser);
      result = {
        'status': true,
        'message': 'Successfully registered',
        'data': authUser
      };
    } else {
//      if (response.statusCode == 401) Get.toNamed("/login");
      result = {
        'status': false,
        'message': 'Registration failed',
        'data': responseData
      };
    }

    return result;
  }

  static onError(error) {
    print("the error is $error.detail");
    return {
      'status': false,
      'message': 'Unsuccessful Request',
      'data': error
    };
  }
  }