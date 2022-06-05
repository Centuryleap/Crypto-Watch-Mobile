import 'package:cryptowatch/app/app_constants.dart';
import 'package:cryptowatch/presentation/screens/login/enter_otp.dart';
import 'package:cryptowatch/presentation/screens/login/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Background2,
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 132),
        child: Builder(
          builder: (context) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/cryptowatch_logo_blue.svg'),
                    SizedBox(
                      height: 36,
                    ),
                    Text('Forgot Password',
                        style: Header1.copyWith(color: Text1)),
                    SizedBox(
                      height: 4,
                    ),
                    Text('Enter the email you signed up with',
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
                      height: 48,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) => OTPScreen()),
                          ),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      color: Primary2,
                      minWidth: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Submit',
                        style: BodyText1.copyWith(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        child: Text(
                          'Back to login',
                          style: BodyText2.copyWith(
                            color: Primary3,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: ((context) => SignInScreen()),
                            ),
                          );
                        },
                      ),
                    ),
                  ]),
            );
          },
        ),
      ),
    );
  }
}
