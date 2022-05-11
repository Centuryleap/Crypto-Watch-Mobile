import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cryptowatch/OtherScreens/BottomNavigationScreen.dart';
import 'package:cryptowatch/OtherScreens/testing_screen.dart';

import 'package:cryptowatch/SignupProcess/OnboardingScreen.dart';
import 'package:cryptowatch/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    _navigateToHome();
 
    super.initState();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 7000), () {});

    Navigator.of(context).pushReplacement(PageTransition(
      child: 
      //TestingScreen(),
      OnboardingScreen(),
      type: PageTransitionType.fade,
      duration: Duration(milliseconds: 1500),
      curve: Curves.fastLinearToSlowEaseIn,
    ));
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: DefaultTextStyle(
          style: GoogleFonts.poppins(
              color: PrimaryDeepBlue,
              fontWeight: FontWeight.w700,
              fontSize: 36),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText('Cryptowatch',
                  speed: Duration(milliseconds: 600),
                  cursor: '',
                  curve: Curves.fastLinearToSlowEaseIn),
            ],
          ),
        ),

        //Text('Cryptowatch', style: GoogleFonts.poppins( color: PrimaryDeepBlue, fontWeight: FontWeight.w700, fontSize: 36))
      ),
    );
  }
}
