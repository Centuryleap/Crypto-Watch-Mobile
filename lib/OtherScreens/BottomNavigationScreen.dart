import 'package:cryptowatch/OtherScreens/setting_screen.dart';
import 'package:cryptowatch/OtherScreens/watchlist_screen.dart';
import 'package:cryptowatch/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'home_screen.dart';


class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List<Widget> _screens = [
    HomeScreen(),
    WatchlistScreen(),
    Text('Third'),
    SettingScreen()
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(showUnselectedLabels: true,  items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(label: 'Home',
          icon: Icon(
            _selectedIndex == 0 ? IconlyBold.home : IconlyLight.home,
          ),
        ),
        BottomNavigationBarItem( label: 'Watchlist',
          
          icon: Icon(
            _selectedIndex == 1 ? IconlyBold.bookmark : IconlyLight.bookmark,
          ),
        ),
        BottomNavigationBarItem(
         label: 'Notification',
          icon: Icon(
            _selectedIndex == 2 ? IconlyBold.notification : IconlyLight.notification,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Settings',
          icon: Icon(
            _selectedIndex == 3 ? IconlyBold.setting : IconlyLight.setting,
          ),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: BlueDefault,
      unselectedItemColor: Color(0xff999999),
      onTap: _onItemTapped,
      ),
    );
  }
}
