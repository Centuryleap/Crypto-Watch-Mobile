import 'package:cryptowatch/core/repository/repository.dart';
import 'package:cryptowatch/presentation/screens/account/settings_screen.dart';
import 'package:cryptowatch/presentation/screens/price%20alert/price_alert_screen.dart';
import 'package:cryptowatch/presentation/screens/watchlist_screen.dart';
import 'package:cryptowatch/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  
  var currentIndex = 0;
  Repository repository = Repository();

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
    HomeScreen(repository: repository),
    WatchlistScreen( repository: repository,),
     PriceAlertScreen(),
      SettingsScreen(),
  ];
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ), 
      bottomNavigationBar: SizedBox(
        height: 80.h,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          showUnselectedLabels: true,
          backgroundColor: const Color(0xffFFFFFF),
          unselectedItemColor: const Color(0xff888C99),
          selectedItemColor: const Color(0xff072692),
          iconSize: 25.sp,
          selectedFontSize: 15.sp,
          unselectedFontSize: 12.sp,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Padding(
                padding:  EdgeInsets.only(
                  bottom: 7.w,
                ),
                child: Icon(
                  IconlyLight.home,
                ),
              ),
              activeIcon: Padding(
                padding:  EdgeInsets.only(bottom: 7.w,),
                child: Icon(
                  IconlyBold.home,
                  color: const Color(0xff072692),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Watchlist',
              icon: Padding(
                padding: EdgeInsets.only(
                  bottom: 7.w,
                ),
                child: Icon(
                  Iconsax.star,
                ),
              ),
              activeIcon: Padding(
                padding:  EdgeInsets.only(
                  bottom: 7.w,
                ),
                child: SvgPicture.asset(
                  'assets/images/star.svg',
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Notification',
              icon: Padding(
                padding:  EdgeInsets.only(
                  bottom: 7.w,
                ),
                child: Icon(
                  Iconsax.notification_circle,
                ),
              ),
              activeIcon: Padding(
                padding:  EdgeInsets.only(
                  bottom: 7.w,
                ),
                child: Image.asset(
                  'assets/images/notification.png',
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Padding(
                padding:  EdgeInsets.only(
                  bottom: 7.w,
                ),
                child: Icon(
                  IconlyLight.setting,
                ),
              ),
              activeIcon: Padding(
                padding:  EdgeInsets.only(
                  bottom: 7.w,
                ),
                child: Icon(
                  IconlyBold.setting,
                  color: Color(0xff072692),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


