import 'package:cryptowatch/presentation/components/widgets/container_list_widget.dart';
import 'package:cryptowatch/presentation/components/widgets/notification_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.w,
              vertical: 72.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Settings',
                  style: TextStyle(
                    color: const Color(0xff01071D),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 44.h,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 38.r,
                        child: Image.asset('assets/images/profile_pic.png'),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        'Akinbiola Michael',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(
                            0xff01071D,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        'adepitanoluwatosin202@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12.sp,
                          color: const Color(0xff888c99),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 51.h,
                ),
                Text(
                  'Notifications',
                  style: TextStyle(
                    color: const Color(0xff272D43),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 26.h,
                ),
                NotificationListWidget(title: 'Receive notification in email'),
                SizedBox(
                  height: 6.h,
                ),
                NotificationListWidget(title: 'Push notifications'),
                SizedBox(
                  height: 6.h,
                ),
                NotificationListWidget(
                    title: 'Get notified about new listings'),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'Security',
                  style: TextStyle(
                    color: const Color(0xff272D43),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                ContainerListWidget(
                  title: 'Change Password',
                  icon: Iconsax.lock,
                ),
                SizedBox(
                  height: 8.h,
                ),
                ContainerListWidget(
                  title: 'Preffered currency - USD',
                  icon: Iconsax.trade,
                ),
                SizedBox(
                  height: 44.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.logout,
                      color: const Color(0xffE24949),
                      size: 20.sp,
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    Text(
                      'Signout',
                      style: TextStyle(
                        color: const Color(0xffE24949),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  
}
