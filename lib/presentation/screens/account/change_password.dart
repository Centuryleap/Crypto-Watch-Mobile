import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/app_constants.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Background2,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 32.w,
          vertical: 93.h,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset(
                      'assets/images/arrow.png',
                      width: 14.w,
                      height: 16.h,
                    ),
                  ),
                  Text(
                    'Change Password',
                    style: Header2.copyWith(
                      color: Text1,
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              ),
              SizedBox(
                height: 86.h,
              ),
              CustomTextField(
                hintText: 'Old Password',
                passwordController: _oldPasswordController,
                validator: oldPasswordValidator,
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextField(
                hintText: 'New Password',
                passwordController: _newPasswordController,
                validator: newPasswordValidator,
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomTextField(
                hintText: 'Confirm Password',
                passwordController: _confirmPasswordController,
                validator: confirmPasswordValidator,
              ),
              SizedBox(
                height: 56.h,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    16.r,
                  ),
                ),
                color: Primary2,
                onPressed: () {},
                padding: EdgeInsets.symmetric(
                  vertical: 20.h,
                ),
                minWidth: double.infinity,
                child: Text(
                  'Change password',
                  style: BodyText1.copyWith(
                    color: Background1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController passwordController;
  final String? Function(String?) validator;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.passwordController,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(fontSize: 14),
      controller: passwordController,
      decoration: InputDecoration(
        fillColor: Background1,
        filled: true,
        hintText: hintText,
        hintStyle: BodyText1.copyWith(color: Text3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

String? oldPasswordValidator(String? value) {
  if (value != null && value.isNotEmpty) {
    return null;
  } else {
    return 'Please enter your current password';
  }
}

String? newPasswordValidator(String? value) {
  if (value != null && value.isNotEmpty) {
    return null;
  } else {
    return 'Please enter your new password';
  }
}

String? confirmPasswordValidator(String? value) {
  if (value != newPasswordValidator) {
    return 'New password must be the same';
  }
  if (value != null && value.isNotEmpty) {
    return null;
  } else {
    return 'Please re-enter your password';
  }
}
