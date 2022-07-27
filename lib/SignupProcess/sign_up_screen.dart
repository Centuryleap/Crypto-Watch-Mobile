import 'package:cryptowatch/OtherScreens/BottomNavigationScreen.dart';
import 'package:cryptowatch/OtherScreens/home_screen.dart';
import 'package:cryptowatch/SignupProcess/sign_in_screen.dart';
import 'package:cryptowatch/provider/auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:cryptowatch/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);
    void _register() {
      if (_formKey.currentState!.validate()) {
        String email = emailController.text.trim();
        String password = passwordController.text.trim();
        String confirmPassword= confirmPasswordController.text.trim();

        auth.register(email, password,confirmPassword).then((response) {
          if (response.isSuccess) {
            print('sucess');
            Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => BottomNavigationScreen())));
            print('Auth Sucess');
          } else {
            print(response.message);
          }
        });
      }
    }

    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Background2,
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 132),
        child: Builder(builder: (context) {
          return Container(
            alignment: Alignment.center,
            child: Form(
              key: _formKey,
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
                      controller: emailController,
                      validator: (value) {
                        if (!RegExp(
                                r'^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                            .hasMatch(value!)) {
                          return 'Looks like this is not an email';
                        }
                        return null;
                      },
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
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
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
                      controller: confirmPasswordController,
                      validator: (value) {
                        if (confirmPasswordController == value) {
                          return 'Please the password must match';
                        }
                        return null;
                      },
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
                        _register();
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
            ),
          );
        }),
      ),
    );
  }
}
