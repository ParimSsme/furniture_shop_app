import 'package:flutter/material.dart';
import 'package:furniture_shop_app/config/colors/furniture_colors.dart';
import 'package:furniture_shop_app/features/feature_favorites/presentation/screens/favorites_screen.dart';
import 'package:furniture_shop_app/features/feature_home/presentation/screens/home_screen.dart';
import '../../features/feature_notifications/presentation/screens/notifications_screen.dart';
import '../../features/feature_profile/presentation/screens/profile_screen.dart';

class TabsMainWrapper extends StatefulWidget {
  const TabsMainWrapper({super.key});

  @override
  State<TabsMainWrapper> createState() => _TabsMainWrapperState();
}

class _TabsMainWrapperState extends State<TabsMainWrapper> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    const FavoritesScreen(),
    const NotificationsScreen(),
    const ProfileScreen(),
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_outlined),
            activeIcon: Icon(Icons.bookmark),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            activeIcon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
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
