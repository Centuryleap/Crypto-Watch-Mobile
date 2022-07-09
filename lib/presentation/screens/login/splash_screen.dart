import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cryptowatch/presentation/screens/bottom_navigation_screen.dart';
import 'package:cryptowatch/presentation/screens/login/sign_up_screen.dart';
import 'package:cryptowatch/app/app_constants.dart';
import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SvgPicture.asset('assets/images/cryptowatch_logo_white.svg'),
      backgroundColor: Primary1,
      nextScreen: BottomNavigationScreen(),
      duration: 1000,
      splashTransition: SplashTransition.scaleTransition,
      pageTransitionType: PageTransitionType.fade,
      animationDuration: Duration(seconds: 2),
    );
  }
}
