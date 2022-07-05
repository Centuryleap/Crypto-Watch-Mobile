import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 76),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: Image.asset('assets/images/profile_pic.png'),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Akinbola Michael',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(
                            0xff303030,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'maoja37@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 92,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: Icon(
                      IconlyLight.lock,
                      size: 24,
                      color: Color(0xff999999),
                    ),
                    title: Text(
                      'Change Password',
                      style: TextStyle(
                        color: Color(0xff121212),
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined, color: Color(0xffAAAAAA), size: 28,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: Icon(
                      IconlyLight.notification,
                      size: 24,
                      color: Color(0xff999999),
                    ),
                    title: Text(
                      'Notification Settings',
                      style: TextStyle(
                        color: Color(0xff121212),
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined, color: Color(0xffAAAAAA), size: 28,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: SvgPicture.asset('assets/images/exclamation-diamond.svg'),
                    title: Text(
                      'Price Alert',
                      style: TextStyle(
                        color: Color(0xff121212),
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined, color: Color(0xffAAAAAA), size: 28,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: SvgPicture.asset('assets/images/reply.svg'),
                    title: Text(
                      'Share App',
                      style: TextStyle(
                        color: Color(0xff121212),
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined, color: Color(0xffAAAAAA), size: 28,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: Icon(
                      IconlyLight.logout,
                      size: 24,
                      color: Color(0xffE52F15),
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        color: Color(0xff121212),
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined, color: Color(0xffAAAAAA), size: 28,),
                  ),
                ),
                
              ],
            )),
      ),
    );
  }
}
