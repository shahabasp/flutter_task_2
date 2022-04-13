import 'package:flutter/material.dart';
import 'package:tutorial_app/colors.dart';

class PracticeCategory extends StatelessWidget {
  const PracticeCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColor.homePageDetail.withOpacity(0.6),
        ),
        height: 270,
        margin: const EdgeInsets.only(left: 15, top: 10, right: 15),
        padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Login Page UI',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: AppColor.homePageSubtitle),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Colors.white, blurRadius: 5)
                      ],
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'START',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColor.homePageTitle),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                NewWidget2(image: 'assets/images/image3.jpg'),
                SizedBox(width: 10),
                NewWidget2(image: 'assets/image/image1.jpeg'),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Estimated time : 1 Day',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColor.homePageSubtitle),
            )
          ],
        ),
      ),
    ]);
  }
}

class NewWidget2 extends StatelessWidget {
  final String image;
  const NewWidget2({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover)),
      height: 150,
      width: 120,
    );
  }
}
