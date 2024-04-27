import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/images/app_images.dart';
import 'package:ambulance/data/bottom_nav_bar_model.dart';
import 'package:ambulance/presentation/features/home_page/profile/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeHage extends StatefulWidget {
  const HomeHage({super.key});

  @override
  State<HomeHage> createState() => _HomeHageState();
}

class _HomeHageState extends State<HomeHage> {
  int curretnIndex = 0;
  List<Widget> screens = [
    const Center(
      child: Text('1'),
    ),
    const Center(
      child: Text('2'),
    ),
    const Center(
      child: Text('3'),
    ),
    const Center(
      child: Text('4'),
    ),
    const ProfileScreen(),
  ];
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 4);

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        iconSize: 28,
        inactiveColorPrimary: AppColors.grayAF,
        activeColorPrimary: AppColors.blue,
        icon: const Icon(Icons.person_add_alt),
        title: ("Доктора"),
      ),
      PersistentBottomNavBarItem(
        iconSize: 28,
        inactiveColorPrimary: AppColors.grayAF,
        activeColorPrimary: AppColors.blue,
        icon: const Icon(Icons.list_alt),
        title: ("Статьи"),
      ),
      PersistentBottomNavBarItem(
        iconSize: 28,
        inactiveColorPrimary: AppColors.blue,
        icon: const Icon(
          Icons.car_rental,
          color: AppColors.white,
        ),
        // title: ("Вызов"),
      ),
      PersistentBottomNavBarItem(
        iconSize: 28,
        inactiveColorPrimary: AppColors.grayAF,
        activeColorPrimary: AppColors.blue,
        icon: const Icon(Icons.bookmark_border_outlined),
        title: ("Мои доктора"),
      ),
      PersistentBottomNavBarItem(
        iconSize: 28,
        inactiveColorPrimary: AppColors.grayAF,
        activeColorPrimary: AppColors.blue,
        icon: const Icon(Icons.person_outline_outlined),
        title: ("Профиль"),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: screens,
      items: _navBarsItems(),
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style16,
    );
  }
}
