import 'package:cryptowatch/app/app_constants.dart';
import 'package:cryptowatch/presentation/screens/login/sign_up_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010927),
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 22, top: 71),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/spaceship_man.png',
              width: double.infinity,
              height: 365,
            ),
            SizedBox(
              height: 56,
            ),
            Text(
              'Take charge of amazing\nopportunities',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'SF-Pro',
                  color: Colors.white,
                  fontSize: 31,
                  fontWeight: FontWeight.w700,
                  height: 1.4),
            ),
            SizedBox(height: 16),
            Text(
              'Make use of the opportunities that come with\nevery rise and fall of prices in the crypto coin\nmarket.',
              style: TextStyle(
                  height: 1.5,
                  fontFamily: 'SF-Pro',
                  fontSize: 16,
                  color: Colors.white,
                  fontStyle: FontStyle.normal),
            ),
            SizedBox(
              height: 64,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  color: PrimaryBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                        (route) => false);
                  },
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 22),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
