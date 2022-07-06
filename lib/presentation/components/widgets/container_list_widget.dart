import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xff888C99),
            size: 20.sp,
          ),
          SizedBox(
            width: 18.w,
          ),
          Text(
            title,
            style: TextStyle(
              color: const Color(0xff272D43),
              fontSize: 14.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
