import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop_app/presentation/pages/main/favorites_page.dart';
import 'package:furniture_shop_app/presentation/pages/main/home_page.dart';
import '../../../core/assets/app_icon_assets.dart';
import '../../../core/theme/app_colors.dart';
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
            icon: SvgPicture.asset(AppIconAssets.home),
            activeIcon: SvgPicture.asset(AppIconAssets.homeFilled),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIconAssets.favourite),
            activeIcon: SvgPicture.asset(AppIconAssets.favouriteFilled),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIconAssets.notification),
            activeIcon: SvgPicture.asset(AppIconAssets.notificationFilled),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIconAssets.profile),
            activeIcon: SvgPicture.asset(AppIconAssets.profileFilled),
            label: '',
          ),
        ],
        elevation: 15,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.background,
        unselectedItemColor: AppColors.accent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
