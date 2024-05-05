// ignore_for_file: use_build_context_synchronously
import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/images/app_images.dart';
import 'package:ambulance/presentation/features/home_page/profile/widgets/analyses_tab.dart';
import 'package:ambulance/presentation/features/home_page/profile/widgets/diagnoses_tab.dart';
import 'package:ambulance/presentation/features/home_page/profile/widgets/recommendations_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileTabsWidget extends StatefulWidget {
  const ProfileTabsWidget({
    super.key,
  });

  @override
  State<ProfileTabsWidget> createState() => _ProfileTabsWidgetState();
}

class _ProfileTabsWidgetState extends State<ProfileTabsWidget>
    with TickerProviderStateMixin {
  int currentIndex = 0;
  late TabController _tabController;

  void _handleTabChange() {
    currentIndex = _tabController.index;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabChange);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            labelColor: AppColors.blue,
            labelPadding: const EdgeInsets.all(0),
            labelStyle: const TextStyle(fontWeight: FontWeight.w500),
            unselectedLabelColor: AppColors.blueTab.withOpacity(0.5),
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: myTabs,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const <Widget>[
                AnalysesTab(),
                DiagnosesTab(),
                RecommendationsTab()
              ],
            ),
          ),
        ],
      ),
    );
  }

// TODO: slow animation tab active  ------- ANSWER add ur custom icons to ttf format and add ass font and create Appconst for ur icons
  List<Tab> get myTabs {
    return <Tab>[
      Tab(
        text: 'Анализы',
        icon: SvgPicture.asset(
          AppSvg.dropper,
          colorFilter: ColorFilter.mode(
            currentIndex == 0
                ? AppColors.blue
                : AppColors.blue.withOpacity(0.5),
            BlendMode.srcIn,
          ),
        ),
      ),
      Tab(
        text: 'Диагнозы',
        icon: SvgPicture.asset(
          AppSvg.collection,
          colorFilter: ColorFilter.mode(
            currentIndex == 1
                ? AppColors.blue
                : AppColors.blue.withOpacity(0.5),
            BlendMode.srcIn,
          ),
        ),
      ),
      Tab(
        text: 'Рекомендации',
        icon: SvgPicture.asset(
          AppSvg.detail,
          colorFilter: ColorFilter.mode(
            currentIndex == 2
                ? AppColors.blue
                : AppColors.blue.withOpacity(0.5),
            BlendMode.srcIn,
          ),
        ),
      ),
    ];
  }
}
