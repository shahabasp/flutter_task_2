import 'package:flutter/material.dart';
import 'package:tutorial_app/Category/practice_category.dart';
import 'package:tutorial_app/Category/test_category.dart';

import '../Category/chapters_category.dart';
import '../colors.dart';

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({Key? key}) : super(key: key);

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;

  @override
  void initState() {
    _tabcontroller = TabController(length: 3, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            AppColor.gradientFirst,
            AppColor.gradientSecond,
          ],
          begin: const FractionalOffset(0.0, 0.4),
          end: Alignment.topRight,
        )),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 50,
                left: 30,
              ),
              width: MediaQuery.of(context).size.width,
              height: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: AppColor.secondPageTopIconColor,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Flutter Development',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: AppColor.secondPageTitleColor),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(26)),
              ),
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.homePageTitle.withOpacity(1),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: const [BoxShadow(blurRadius: 5)]),
                  height: 50,
                  child: TabBar(
                      indicatorWeight: 0.1,
                      controller: _tabcontroller,
                      labelColor: Colors.cyanAccent,
                      unselectedLabelColor: AppColor.secondPageTitleColor,
                      tabs: const [
                        Tab(text: 'Chapters'),
                        Tab(text: 'Practice'),
                        Tab(text: 'Test'),
                      ]),
                ),
                Expanded(
                  child: TabBarView(
                      controller: _tabcontroller,
                      children: const [
                        ChaptersCategoryList(),
                        PracticeCategory(),
                        TestCategory()
                      ]),
                )
              ]),
            ))
          ],
        ),
      ),
    );
  }
}
