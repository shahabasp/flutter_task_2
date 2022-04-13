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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(children: [
        Container(
          height: size.height,
          width: double.infinity,
          // padding: const EdgeInsets.only(
          //   left: 30,
          //   right: 30,
          // ),
          // color: AppColor.secondPageContainerGradient1stColor,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.1,
                width: size.width * 0.9,
                color: AppColor.secondPageContainerGradient2ndColor
                    .withOpacity(0.9),
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
                    SizedBox(width: size.width * 0.02),
                    Text(
                      'Tutorial App',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: AppColor.loopColor),
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      (Icons.more_vert),
                      color: Colors.blue,
                      size: 32,
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Container(
                padding: EdgeInsets.only(left: 15),
                height: 100,
                width: size.width * 0.9,
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
                    Text(
                      'Welcome User',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppColor.homePageContainerTextBig),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      '12 Coureses Completed',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColor.homePageContainerTextSmall),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02),
              CarouselWithDotsPage(),
              Container(
                padding: EdgeInsets.only(top: 5, left: 15),
                height: 30,
                width: size.width * 0.9,
                child: Text(
                  'Courses',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w900,
                      color: AppColor.homePageDetail),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Expanded(
                  child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 1,
                        )
                      ]),
                  height: 50,
                  width: size.width * 0.9,
                  child: TabBar(
                      indicatorWeight: 0.1,
                      controller: _tabcontroller,
                      labelColor: Colors.cyanAccent,
                      unselectedLabelColor: AppColor.secondPageTitleColor,
                      tabs: const [
                        Tab(
                            child: Text(
                          'Purchased',
                          style: TextStyle(fontSize: 16),
                        )),
                        Tab(
                            child: Text(
                          'All',
                          style: TextStyle(fontSize: 16),
                        )),
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
      ]),
    );
  }
}
