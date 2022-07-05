import 'package:cryptowatch/presentation/screens/login/sign_in_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:cryptowatch/app/app_constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                  Text('Create an account',
                      style: Header1.copyWith(color: Text1)),
                  SizedBox(
                    height: 4,
                  ),
                  Text('Create an account to get started',
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
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Background1,
                      hintText: 'Confirm password',
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => SignInScreen())));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    color: Primary2,
                    minWidth: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text('Create account',
                        style: BodyText1.copyWith(color: Colors.white)),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'Already a User? ',
                          style: BodyText2.copyWith(
                            color: Text3,
                          ),
                          children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => SignInScreen())),
                            text: 'Log in to your account',
                            style: BodyText2.copyWith(color: Primary3))
                      ]))
                ]),
          );
        }),
      ),
    );
  }
}
