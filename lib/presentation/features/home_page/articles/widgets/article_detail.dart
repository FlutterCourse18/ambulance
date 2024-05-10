import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/data/doctors_model.dart';
import 'package:ambulance/presentation/common_widgets/my_back_button.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleDetail extends StatefulWidget {
  const ArticleDetail({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  State<ArticleDetail> createState() => _ArticleDetailState();
}

class _ArticleDetailState extends State<ArticleDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Статья', style: AppFonts.s17w600),
        leading: const MyBackButton(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 23.h, horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${widget.articleModel.title}',
                  style: AppFonts.s24w500.copyWith(color: AppColors.black3)),
              Text('${widget.articleModel.subTitle}',
                  style: AppFonts.s18w500.copyWith(color: AppColors.gray75)),
              addVerticalSpace(16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    child: Icon(Icons.person_outline),
                  ),
                  addHorizontalSpace(8),
                  Text('${widget.articleModel.author}',
                      style:
                          AppFonts.s13w400.copyWith(color: AppColors.black3)),
                  addHorizontalSpace(16),
                  Text('${widget.articleModel.date}',
                      style:
                          AppFonts.s13w400.copyWith(color: AppColors.gray75)),
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  Text('Время чтения: ${widget.articleModel.readTime}',
                      style:
                          AppFonts.s13w400.copyWith(color: AppColors.gray75)),
                ],
              ),
              addVerticalSpace(16),
              Image.network('${widget.articleModel.image}'),
              addVerticalSpace(16),
              Text('${widget.articleModel.article}',
                  style: AppFonts.s18w400.copyWith(color: AppColors.black3)),
            ],
          ),
        ),
      ),
    );
  }
}
