import 'package:ambulance/core/images/app_images.dart';

class BottomNavBarModel {
  final String title;
  final String image;

  BottomNavBarModel({required this.title, required this.image});
}

abstract class BottomNavBarData {
  static List<BottomNavBarModel> data = [
    BottomNavBarModel(title: 'Доктора', image: AppSvg.plus),
    BottomNavBarModel(title: 'Статьи', image: AppSvg.sheet),
    BottomNavBarModel(title: 'Вызов', image: AppSvg.ambulance),
    BottomNavBarModel(title: 'Мои доктора', image: AppSvg.favorite),
    BottomNavBarModel(title: 'Профиль', image: AppSvg.profile),
  ];
}
