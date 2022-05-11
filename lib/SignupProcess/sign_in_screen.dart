import 'package:cryptowatch/SignupProcess/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';


class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                  style: TextStyle( fontWeight: FontWeight.w600, fontSize: 16, color: Black6,),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 32,
                    color: Colors.black,
                  ),
                ),
              
              SizedBox(height: 65),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Username',
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 40),
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
                keyboardType: TextInputType.text,
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
             
              SizedBox(height: 57),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: PrimaryBlue,
                onPressed: () {
          //        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => WelcomeScreen())  , (route) => false);
                },
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 22,
                ),
                child: Text(
                  'Done',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 36),
              Container(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      text: 'I already have an account, ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          height: 1.5,
                          fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Login',
                            style: TextStyle(color: PrimaryBlu2e),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()),
                                    (route) => false);
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
