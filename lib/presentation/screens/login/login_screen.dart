import 'package:cryptowatch/app/app_constants.dart';
import 'package:cryptowatch/presentation/screens/bottom_navigation_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../app/app_routes.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Black6,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 32,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 65,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Email Address',
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 40),
              TextFormField(
                keyboardType: TextInputType.name,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Password',
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                        print(_obscureText);
                      });
                    },
                    child: Icon(_obscureText
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined),
                  ),
                ),
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 35,
              ),
              GestureDetector(
                  onTap: () =>
                      Navigator.of(context).pushNamed(AppRoutes.forgetPassword),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: PrimaryBlu2e,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  )),
              SizedBox(height: 40),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: PrimaryBlue,
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => BottomNavigationScreen()),
                      (route) => false);
                },
                padding: EdgeInsets.symmetric(vertical: 22),
                minWidth: double.infinity,
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 32),
              Container(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      text: 'I  don\'t have an account, ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          height: 1.5,
                          fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sign me Up',
                            style: TextStyle(color: PrimaryBlue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                //          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> SignInScreen()),(route) => false) ;
                              }),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
