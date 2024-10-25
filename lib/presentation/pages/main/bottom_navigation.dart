import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop_app/config/colors/furniture_colors.dart';
import 'package:furniture_shop_app/core/assets/app_svg_assets.dart';
import 'package:furniture_shop_app/presentation/pages/main/favorites_page.dart';
import 'package:furniture_shop_app/presentation/pages/main/home_page.dart';
import 'notifications_page.dart';
import 'profile_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    const FavoritesPage(),
    const NotificationsPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvgAssets.home),
            activeIcon: SvgPicture.asset(AppSvgAssets.homeFilled),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvgAssets.favourite),
            activeIcon: SvgPicture.asset(AppSvgAssets.favouriteFilled),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvgAssets.notification),
            activeIcon: SvgPicture.asset(AppSvgAssets.notificationFilled),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppSvgAssets.profile),
            activeIcon: SvgPicture.asset(AppSvgAssets.profileFilled),
            label: '',
          ),
        ],
        elevation: 15,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        selectedItemColor: FurnitureColors.black,
        unselectedItemColor: FurnitureColors.lightGrey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
