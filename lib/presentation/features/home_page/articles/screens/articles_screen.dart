import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/data/doctors_model.dart';
import 'package:ambulance/presentation/features/home_page/articles/widgets/article_card.dart';
import 'package:ambulance/presentation/features/home_page/articles/widgets/article_detail.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ArticleModel> articles = ArticleData.articles;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.grayBackground,
        elevation: 0.h,
        shadowColor: Colors.transparent,
        title: Text(
          'Статьи',
          style: AppFonts.s34w700,
        ),
        centerTitle: false,
      ),
      body: Container(
        color: AppColors.grayBackground,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.separated(
            itemBuilder: ((context, index) {
              return ArticleCard(
                articleData: articles[index],
                onTap: () {
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                      builder: (contex) => ArticleDetail(
                        articleModel: articles[index],
                      ),
                    ),
                  );
                },
              );
            }),
            separatorBuilder: (context, index) {
              return addVerticalSpace(8);
            },
            itemCount: articles.length,
          ),
        ),
      ),
    );
  }
}
