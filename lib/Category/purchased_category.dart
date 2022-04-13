import 'package:flutter/material.dart';
import 'package:tutorial_app/screen/page2.dart';

import '../colors.dart';

class PurchasedCategory extends StatelessWidget {
  const PurchasedCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height * 0.01),
        Container(
          padding: EdgeInsets.only(left: 15),
          height: size.height * 0.15,
          width: size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                AppColor.secondPageContainerGradient2ndColor,
                AppColor.secondPageContainerGradient1stColor.withOpacity(0.6)
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: Alignment.topRight,
            ),
          ),
          child: Row(
            children: [
              Container(
                height: size.height * 0.1,
                width: size.width * 0.15,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon/icon5.png'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: size.width * 0.03),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Flutter development',
                    style: TextStyle(
                        fontSize: size.height * 0.025,
                        fontWeight: FontWeight.w900,
                        color: AppColor.gradientFirst.withOpacity(0.6)),
                  ),
                  Container(
                      width: size.width * 0.6,
                      child: Row(children: [
                        Expanded(child: Container()),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ScreenCategory();
                            }));
                          },
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                fontSize: size.height * 0.022,
                                fontWeight: FontWeight.bold,
                                color: AppColor.gradientFirst),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: AppColor.homePageContainerTextBig),
                        ),
                      ])),
                  Text(
                    '3/14 Chapters Completed',
                    style: TextStyle(
                        fontSize: size.height * 0.022,
                        fontWeight: FontWeight.bold,
                        color: AppColor.gradientFirst.withOpacity(0.6)),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
