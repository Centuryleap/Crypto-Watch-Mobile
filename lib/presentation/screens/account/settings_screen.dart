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
                      SizedBox(
                        height: 15.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            isDismissible: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) => buildSheet(context),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Iconsax.wallet_3,
                              size: 20.sp,
                              color: const Color(0xff072692),
                            ),
                            SizedBox(width: 11.w),
                            Text(
                              'Connect Wallet',
                              style: TextStyle(
                                color: const Color(0xff072692),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      )
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

  Widget buildSheet(BuildContext context) => DraggableScrollableSheet(
        builder: (_, controller) => Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(32.r),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 32.h,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffDBDCDF),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                height: 6.h,
                width: 48.w,
              ),
              SizedBox(
                height: 24.h,
              ),
              Text('Connect wallet',
              style: TextStyle(
                color: const Color(0xff01071D),
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              ),
              SizedBox(height: 4.h,),
              Text('Securely store your cryptocurrency.\nConnect to one of the following wallets ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xff888C99),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              )
              ),
              SizedBox(
                height: 54.h,
              ),
            ],
          ),
        ),
      );
}
