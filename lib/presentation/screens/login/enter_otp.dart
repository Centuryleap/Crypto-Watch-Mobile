import 'dart:async';
import 'package:cryptowatch/app/app_constants.dart';
import 'package:cryptowatch/presentation/screens/login/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 132),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/cryptowatch_logo_blue.svg'),
                SizedBox(
                  height: 36,
                ),
                Text('Enter OTP', style: Header1.copyWith(color: Text1)),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Enter the one time password(OTP)\nsent to your email address',
                    textAlign: TextAlign.center,
                    style: BodyText1.copyWith(color: Text3)),
                SizedBox(
                  height: 80,
                ),
                Form(
                  key: formKey,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.only(
                        left: 60, right: 60, top: 15, bottom: 5),
                    child: PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.green.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 6,
                      obscureText: true,

                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,

                      pinTheme: PinTheme(
                        fieldWidth: 18,
                        fieldHeight: 28,
                        activeColor: Color(0xffd2d2d2),
                        inactiveColor: Color(0xffd2d2d2),
                        activeFillColor: Colors.white,
                      ),
                      cursorColor: Colors.transparent,
                      animationDuration: Duration(milliseconds: 100),
                      // enableActiveFill: true,
                      errorAnimationController: errorController,
                      controller: textEditingController,
                      keyboardType: TextInputType.number,

                      onCompleted: (v) {
                        print("Completed");
                      },

                      onChanged: (value) {
                        print(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                MaterialButton(
                  onPressed: () {
                    if (currentText.length != 6) {
                      errorController!.add(ErrorAnimationType
                          .shake); // Triggering error shake animation
                      setState(() => hasError = true);
                    } else {
                      setState(
                        () {
                          hasError = false;
                          snackBar("OTP Verified!!");
                        },
                      );
                    }
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: ((context) => ResetPassword()),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: Primary2,
                  minWidth: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Verify',
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
                      'Back',
                      style: BodyText2.copyWith(
                        color: Primary3,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
