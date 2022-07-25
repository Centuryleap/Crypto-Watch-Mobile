import 'package:flutter/material.dart';

import '../presentation/screens/account/change_password.dart';
import '../presentation/screens/login/forgot_password.dart';
import '../presentation/screens/login/sign_in_screen.dart';
import '../presentation/screens/login/sign_up_screen.dart';
import '../presentation/screens/login/splash_screen.dart';

// * This is a "centralized" control of the app routes which keeps the code clean.
// * Having this single class that handles the entire routing of your app is very nice as it fully embraces
// * the single responsibility principle. By consequence, when you’ll have to deal with routes you’ll
// * always open this routes.dart file because every route-related logic is only here..

class AppRoutes {
  static const splashScreen = '/';
  static const signUpView = '/signUp';
  static const signInView = '/signIn';
  static const changePassword = '/changePassword';
    static const forgetPassword = '/forgetPassword';


  static Route routes(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case signUpView:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case signInView:
        return MaterialPageRoute(
          builder: (_) => SignInScreen(),
        );
      case changePassword:
        return MaterialPageRoute(
          builder: (_) => ChangePasswordScreen(),
        );
         case forgetPassword:
        return MaterialPageRoute(
          builder: (_) => ForgetPasswordScreen(),
        );

      default:
        throw const FormatException("Route not found");
    }
  }
}
