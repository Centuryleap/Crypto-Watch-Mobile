import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 32.w,
          vertical: 93.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: SvgPicture.asset(
                      'assets/images/left_arrow.svg',
                      width: 14.w,
                      height: 16.h,
                      color: Color(0xff010923),
                    )),
                Text(
                  'Change Password',
                  style: TextStyle(
                    color: const Color(0xff01071D),
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
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
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              hintText: 'New Password',
              passwordController: _newPasswordController,
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              hintText: 'Confirm Password',
              passwordController: _confirmPasswordController,
            ),
            SizedBox(
              height: 56.h,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(16.r,),),
              color: PrimaryBlue,
              onPressed: () {},
              padding: EdgeInsets.symmetric(vertical: 18.h,),
              minWidth: double.infinity,
              child: Text(
                'Change password',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController passwordController;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
      decoration: InputDecoration(
        fillColor: Background1,
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
