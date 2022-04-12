import 'package:flutter/material.dart';
import 'package:tutorial_app/screen/page2.dart';

import '../colors.dart';

class PurchasedCategory extends StatelessWidget {
  const PurchasedCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.only(left: 15),
      height: 135,
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

                height: 70,
                width: 70
                ,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/icon/icon5.png'),fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 5,),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Flutter development',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900,color: AppColor.gradientFirst.withOpacity(0.6)),),
                  Padding(
                    padding: const EdgeInsets.only(left: 150.0),
                    child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(blurRadius: 10,color: AppColor.secondPageContainerGradient1stColor)
                          ]
                        ),
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context){return ScreenCategory();}));
                        }, child: Text('Continue', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: AppColor.gradientFirst),),style: ElevatedButton.styleFrom(primary: AppColor.homePageContainerTextBig),)),
                  ),
                  Text('3/14 Chapters Completed', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: AppColor.gradientFirst.withOpacity(0.6)),)
                ],
              ),

            ],
          ),
    )],
    );
  }
}
