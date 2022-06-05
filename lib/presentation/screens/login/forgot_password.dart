import 'package:cryptowatch/app/app_constants.dart';
import 'package:cryptowatch/presentation/screens/login/enter_otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 77),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    CupertinoIcons.arrow_left,
                    size: 16,
                  )),
              SizedBox(
                height: 30,
              ),
              Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Input the email address you signed up with',
                style: TextStyle(
                    color: Color(0xff666666), fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 83),
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
              SizedBox(height: 48),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: PrimaryBlue,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => OTPScreen()));
                },
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 22,
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
