import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:maintainance/res/app_colors.dart';
import 'package:maintainance/view/account/account.dart';
import 'package:maintainance/view/home/home_tab.dart';
import 'package:maintainance/view/notifications/notification_screen.dart';
import 'package:maintainance/view/settings/settings.dart';
import 'package:maintainance/view/workers/workers.dart';

class MainBottomTab extends StatefulWidget {
  const MainBottomTab({super.key});

  @override
  State<MainBottomTab> createState() => _MainBottomTabState();
}

class _MainBottomTabState extends State<MainBottomTab> {
  int _initialIndex = 0;
  final page = [
    const HomeTab(),
    const NotificationScreen(),
    const Workers(),
    const Settings(),
    const Account(),
  ];
  pageChange(int index) {
    _initialIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        curve: Curves.bounceInOut,
        disableDefaultTabController: false,
        items: const [
          TabItem(
            icon: Icons.home_outlined,
            activeIcon: Icons.home,
            title: 'Home',
          ),
          TabItem(
              icon: Icons.notifications_none,
              title: 'Alerts',
              activeIcon: Icons.notifications),
          TabItem(
              icon: Icons.man_2_outlined,
              title: 'Workers',
              activeIcon: Icons.man),
          TabItem(
              icon: Icons.settings,
              activeIcon: Icons.settings,
              title: 'Settings'),
          TabItem(
              icon: Icons.account_circle_outlined,
              title: 'Account',
              activeIcon: Icons.account_circle)
        ],
        backgroundColor: AppColors.backgroundColor,
        style: TabStyle.react,
        initialActiveIndex: _initialIndex,
        onTap: (index) {
          pageChange(index);
        },
      ),
      body: page[_initialIndex],
    );
  }
}
