import 'package:cryptowatch/app/app_constants.dart';
import 'package:cryptowatch/presentation/screens/login/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 132),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/cryptowatch_logo_blue.svg'),
              SizedBox(
                height: 36,
              ),
              Text('Reset Password', style: Header1.copyWith(color: Text1)),
              SizedBox(
                height: 10,
              ),
              Text('Create a new passsword to sign in\nto your account',
                  textAlign: TextAlign.center,
                  style: BodyText1.copyWith(color: Text3)),
              SizedBox(height: 83),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  fillColor: Background1,
                  hintText: 'New Password',
                  hintStyle: BodyText1.copyWith(color: Text3),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  fillColor: Background1,
                  hintText: 'Confirm Password',
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
                      builder: ((context) => SignInScreen()),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                color: Primary2,
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Continue to login',
                  style: BodyText1.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
