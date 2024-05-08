import 'package:ambulance/core/colors/app_colors.dart';
import 'package:ambulance/core/consts/app_consts.dart';
import 'package:ambulance/core/fonts/app_fonts.dart';
import 'package:ambulance/data/doctors_model.dart';
import 'package:ambulance/utils/sized_box_helper.dart';
import 'package:date_time_format/date_time_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
// TODO: create a separate widget fom every tabviews

class DoctorDatailTabs extends StatefulWidget {
  const DoctorDatailTabs(
      {super.key, required this.doctorsModel, required this.isPersistBoutton});
  final DoctorsModel doctorsModel;
  final Function(int) isPersistBoutton;
  @override
  State<DoctorDatailTabs> createState() => _DoctorDatailTabsState();
}

class _DoctorDatailTabsState extends State<DoctorDatailTabs>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  String formatedDate = DateTime.now().format('d M Y');
  final TextEditingController _controller = TextEditingController();

  void onSubmit() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String name = prefs.getString(AppConsts.userName) ?? '';
    final String surname = prefs.getString(AppConsts.userSurname) ?? '';
    widget.doctorsModel.comments
        ?.add(Comments(name: '$name ' '$surname', comment: _controller.text));
    _controller.clear();
    setState(() {});
  }

  List<Tab> tabs = [
    const Tab(
      text: 'О докторе',
      icon: Icon(Icons.person_pin_outlined),
    ),
    const Tab(
      text: 'Контакты',
      icon: Icon(Icons.location_pin),
    ),
    const Tab(
      text: 'Отзывы',
      icon: Icon(Icons.comment_rounded),
    ),
  ];

  void showPersistButton() {
    widget.isPersistBoutton(_tabController.index);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(showPersistButton);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _tabController.removeListener(showPersistButton);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          addVerticalSpace(16),
          TabBar(
            onTap: (index) {
              widget.isPersistBoutton(index);
              setState(() {});
            },
            controller: _tabController,
            labelColor: AppColors.blue,
            labelPadding: const EdgeInsets.all(0),
            labelStyle: const TextStyle(fontWeight: FontWeight.w500),
            unselectedLabelColor: AppColors.blueTab.withOpacity(0.5),
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: tabs,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: Text(
                      '${widget.doctorsModel.about}',
                      style: AppFonts.s18w400,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.phone),
                            addHorizontalSpace(19),
                            Column(
                              children: widget.doctorsModel.contacts!.phone!
                                  .map(
                                    (e) => Text(
                                      e,
                                      style: AppFonts.s18w400,
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        ),
                        addHorizontalSpace(8),
                        const Divider(),
                        addHorizontalSpace(16),
                        Row(
                          children: [
                            const Icon(Icons.location_pin),
                            addHorizontalSpace(19),
                            Expanded(
                              child: Text(
                                '${widget.doctorsModel.contacts?.adress}',
                                style: AppFonts.s18w400,
                                softWrap: true,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        addHorizontalSpace(8),
                        const Divider(
                          indent: 20,
                        ),
                        addHorizontalSpace(16),
                        Row(
                          children: [
                            const Icon(Icons.email),
                            addHorizontalSpace(19),
                            Text(
                              '${widget.doctorsModel.contacts?.email}',
                              style: AppFonts.s18w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.separated(
                          itemBuilder: (context, index) => Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 20.r,
                                    child: const Icon(Icons.person_outline),
                                  )
                                ],
                              ),
                              addHorizontalSpace(13),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      '${widget.doctorsModel.comments!.reversed.toList()[index].name}',
                                      style: AppFonts.s18w500),
                                  Text(
                                      '${widget.doctorsModel.comments!.reversed.toList()[index].comment}'),
                                  Text(formatedDate)
                                ],
                              ),
                              addVerticalSpace(24),
                            ],
                          ),
                          separatorBuilder: (context, index) =>
                              addVerticalSpace(16),
                          itemCount: widget.doctorsModel.comments?.length ?? 0,
                        ),
                      ),
                      addVerticalSpace(12),
                      TextField(
                        onSubmitted: (value) {
                          onSubmit();
                        },
                        controller: _controller,
                        decoration: InputDecoration(
                          suffixIcon: InkWell(
                            onTap: onSubmit,
                            child: const Icon(Icons.send),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.r))),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
