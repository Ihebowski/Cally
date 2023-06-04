import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:cally/constants/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'messages/messages_screen.dart';
import 'profile/profile_screen.dart';
import 'random/random_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _navigationScreens = [
    const RandomScreen(),
    const MessagesScreen(),
    const ProfileScreen(),
  ];
  final List<PersistentBottomNavBarItem> _navigationItems = [
    PersistentBottomNavBarItem(
      icon: const Icon(IconlyBold.call),
      inactiveIcon: const Icon(IconlyLight.call),
      title: ("Random"),
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: accentColor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(IconlyBold.chat),
      inactiveIcon: const Icon(IconlyLight.chat),
      title: ("Messages"),
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: accentColor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(IconlyBold.profile),
      inactiveIcon: const Icon(IconlyLight.profile),
      title: ("Profile"),
      activeColorPrimary: primaryColor,
      inactiveColorPrimary: accentColor,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: PersistentTabView(
        context,
        screens: _navigationScreens,
        items: _navigationItems,
        backgroundColor: backgroundColor,
        navBarStyle: NavBarStyle.style3,
      ),
    );
  }
}
