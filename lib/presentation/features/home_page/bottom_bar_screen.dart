import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/consts/app_consts.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/presentation/features/home_page/doctors/screens/doctor_screen.dart';
import 'package:ambulance/presentation/features/home_page/profile/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeHage extends StatefulWidget {
  const HomeHage({super.key});

  @override
  State<HomeHage> createState() => _HomeHageState();
}

class _HomeHageState extends State<HomeHage> {
  int curretnIndex = 0;
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: AppConsts.initialTabCont);
  List<Widget> screens = [
    const Center(
      child: DoctorsScreen(),
    ),
    const Center(
      child: Text('Статьи'),
    ),
    const Center(
      child: Text('Вызов'),
    ),
    const Center(
      child: Text('Мои доктора'),
    ),
    const ProfileScreen(),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        iconSize: 28,
        inactiveColorPrimary: AppColors.grayAF,
        activeColorPrimary: AppColors.blue,
        icon: const Icon(Icons.person_add_alt),
        title: ("Доктора"),
        textStyle: AppFonts.s10w700,
      ),
      PersistentBottomNavBarItem(
        iconSize: 28,
        inactiveColorPrimary: AppColors.grayAF,
        activeColorPrimary: AppColors.blue,
        icon: const Icon(Icons.list_alt),
        title: ("Статьи"),
        textStyle: AppFonts.s10w700,
      ),
      PersistentBottomNavBarItem(
        iconSize: 28,
        activeColorPrimary: AppColors.blue,
        inactiveColorPrimary: AppColors.blue,
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/svg/ambulance.svg'),
            SvgPicture.asset('assets/images/svg/label.svg'),
          ],
        ),
      ),
      PersistentBottomNavBarItem(
        iconSize: 28,
        inactiveColorPrimary: AppColors.grayAF,
        activeColorPrimary: AppColors.blue,
        icon: const Icon(Icons.bookmark_border_outlined),
        title: ("Мои доктора"),
        textStyle: AppFonts.s10w700,
      ),
      PersistentBottomNavBarItem(
        iconSize: 28,
        inactiveColorPrimary: AppColors.grayAF,
        activeColorPrimary: AppColors.blue,
        icon: const Icon(Icons.person_outline_outlined),
        title: ("Профиль"),
        textStyle: AppFonts.s10w700,
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
      navBarHeight: 64.h,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(0),
        colorBehindNavBar: AppColors.white,
      ),
      navBarStyle: NavBarStyle.style16,
    );
  }
}
