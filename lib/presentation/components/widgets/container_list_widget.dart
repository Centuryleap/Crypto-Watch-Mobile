import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app/app_constants.dart';

class ContainerListWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const ContainerListWidget({ required this.title, required this.icon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 16.h,
        left: 18.w,
        top: 16.h,
      ),
      decoration: BoxDecoration(
        color: Background1,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Text3,
            size: 20.sp,
          ),
          SizedBox(
            width: 18.w,
          ),
          Text(
            title,
            style: BodyText1.copyWith(
              color: Text2,
            ),
          ),
        ],
      ),
    );
  }
}
