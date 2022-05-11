import 'package:cryptowatch/SignupProcess/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cryptowatch/constants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: widthSize * 0.06, top: heightSize * 0.12),
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
                )
              ],
            ),
          ),
          SizedBox(
            height: heightSize * 0.11,
          ),
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 51),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/google1.png',
                          height: 26,
                          width: 26,
                        ),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 24,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  MaterialButton(
                    color: Color(0xff254792),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 48),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          height: 32,
                          width: 32,
                        ),
                        Text(
                          'Sign in with Facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 32,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    color: PrimaryBlue,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ));
                    },
                    padding: EdgeInsets.symmetric(vertical: 18),
                    minWidth: double.infinity,
                    child: Text(
                      'Sign up with Email',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    
                  ),
                  SizedBox(height: 62,),
                   RichText(
                     textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'By signing up you agree to the ',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        height: 1.5,
                        fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Terms', style: TextStyle(color: PrimaryBlu2e)),
                      TextSpan(text: ' and\n'),
                      TextSpan(
                          text: 'Conditions',
                          style: TextStyle(color: PrimaryBlu2e)),
                      TextSpan(text: ' and '),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: PrimaryBlu2e)),
                    ]),
              ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
