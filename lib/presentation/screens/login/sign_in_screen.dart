import 'package:cryptowatch/app/app_constants.dart';
import 'package:cryptowatch/presentation/screens/bottom_navigation_screen.dart';
import 'package:cryptowatch/presentation/screens/login/forgot_password.dart';
import 'package:cryptowatch/presentation/screens/login/sign_up_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Background2,
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 132),
        child: Builder(builder: (context) {
          return Container(
            alignment: Alignment.center,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/images/cryptowatch_logo_blue.svg'),
                  SizedBox(
                    height: 36,
                  ),
                  Text('Welcome Back', style: Header1.copyWith(color: Text1)),
                  SizedBox(
                    height: 4,
                  ),
                  Text('Enter your details to sign into\n your account',
                      textAlign: TextAlign.center,
                      style: BodyText1.copyWith(color: Text3)),
                  SizedBox(
                    height: 56,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Background1,
                      hintText: 'Email address',
                      hintStyle: BodyText1.copyWith(color: Text3),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Background1,
                      hintText: 'Password',
                      hintStyle: BodyText1.copyWith(color: Text3),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => ForgetPasswordScreen()),
                        ),
                        child: Text(
                          "Forgot password?",
                          style:
                              TextStyle(color: Color(0XFF6888F8), fontSize: 12,),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => BottomNavigationScreen())));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    color: Primary2,
                    minWidth: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text('Continue',
                        style: BodyText1.copyWith(color: Colors.white)),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'Don’t have an account? ',
                          style: BodyText2.copyWith(
                            color: Text3,
                          ),
                          children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => SignUpScreen())),
                            text: 'Create one',
                            style: BodyText2.copyWith(color: Primary3))
                      ]))
                ]),
          );
        }),
      ),
    );
  }
}
