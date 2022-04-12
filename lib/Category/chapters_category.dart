import 'package:flutter/material.dart';
import 'package:tutorial_app/colors.dart';

class ChaptersCategoryList extends StatelessWidget {
  const ChaptersCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        VideoInfo(title1: 'Installation',title2: '10 : 30 minutes',),
        SizedBox(height: 10,),
        VideoInfo(title1: 'Basics of dart', title2: '15 : 00 minutes'),
        SizedBox(height: 10,),
        VideoInfo(title1: 'UI Basics', title2: '20 : 00 minutes'),

      ],
    );
  }
}

class VideoInfo extends StatelessWidget {
  final String title1;
  final String title2;
  const VideoInfo({
    Key? key, required this.title1, required this.title2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,),
      child:
         Container(
           padding: EdgeInsets.only(left: 20,right: 20),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(15),
           gradient: LinearGradient(
             colors: [
               AppColor.secondPageTopIconColor.withOpacity(0.1),
               AppColor.secondPageContainerGradient1stColor.withOpacity(0.4),
             ],
             begin: FractionalOffset(0.4, 0.4),
             end: Alignment.topRight,
           )
         ),
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage('assets/images/thumbanil.jpg'),fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title1,style: TextStyle(fontSize: 18,color: AppColor.homePageTitle,
                      fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(title2,style: TextStyle(color: Colors.grey[500]),),
                      ),
                    ],
                  ),Expanded(child: Container()),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.secondPageContainerGradient1stColor,
                            blurRadius: 10,
                            offset: Offset(4, 8),
                          )
                        ]
                      ),
                      child: Icon(Icons.play_circle_fill,color:Colors.white,size: 60,))
                ],
              )
            ],
          ),
        ),
      );
  }
}
