import 'package:flutter/material.dart';
import 'package:tutorial_app/colors.dart';
import 'package:tutorial_app/Category/purchased_category.dart';

import '../Category/all_category.dart';
import '../carousel/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;

  @override
  void initState() {
    _tabcontroller = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        // color: AppColor.secondPageContainerGradient1stColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30),
              height: 100,
              width: MediaQuery.of(context).size.width,
              color:
                  AppColor.secondPageContainerGradient2ndColor.withOpacity(0.9),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 50,
                    decoration: const BoxDecoration(
                      // color: Colors.redAccent,
                      image: DecorationImage(
                          image: AssetImage('assets/icon/icon4.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text('Tutorial App',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900, color: AppColor.loopColor),
                  ),
                  Expanded(child: Container()),
                  const Icon((Icons.more_vert), color: Colors.blue, size: 32,)
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 15),
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    AppColor.gradientFirst,
                    AppColor.gradientSecond
                  ]),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome User',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: AppColor.homePageContainerTextBig),
                  ),
                  const SizedBox(height: 5),
                  Text('12 Coureses Completed',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColor.homePageContainerTextSmall),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            CarouselWithDotsPage(),
            Container(
              padding: EdgeInsets.only(top: 5, left: 15),
              height: 30,
              child: Text('Courses',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900, color: AppColor.homePageDetail),
              ),
            ),
            SizedBox(height: 15),
            Expanded(
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: const [
                          BoxShadow(blurRadius: 1,)
                        ]),
                    height: 50,
                    child: TabBar(
                        indicatorWeight: 0.1,
                        controller: _tabcontroller,
                        labelColor: Colors.cyanAccent,
                        unselectedLabelColor: AppColor.secondPageTitleColor,
                        tabs: const [
                          Tab(child: Text('Purchased', style: TextStyle(fontSize: 16),)),
                          Tab(child: Text('All', style: TextStyle(fontSize: 16),)),
                        ]),
                  ),
                  Expanded(
                    child: TabBarView(
                        controller: _tabcontroller,
                        children: const [PurchasedCategory(), AllCategory()]),
                  )
                ]))
          ],
        ),
      ),
    );
  }
}
