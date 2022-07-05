import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationListWidget extends StatefulWidget {
  final String title;
  const NotificationListWidget({required this.title, Key? key})
      : super(key: key);

  @override
  State<NotificationListWidget> createState() => _NotificationListWidgetState();
}

class _NotificationListWidgetState extends State<NotificationListWidget> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: CheckboxListTile(
        title: Text(widget.title,
        style: TextStyle(
          color: const Color(0xff272D43),
          fontSize: 14.sp,
          fontWeight: FontWeight.w300,
        ),),
        autofocus: false,
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: const Color(0xff072692),
        checkColor: Colors.white,
        selected: _value,
        value: _value,
        onChanged: (value) {
          if (value == null) return;
          setState(() {
            _value = value;
          });
        },
      ),
    );
  }
}
