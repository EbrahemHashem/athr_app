// ignore_for_file: must_be_immutable

import 'package:athr_app/constants.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final List<CustomItem> listItems = [
    // مكيف اسبلت'
    CustomItem(
      color: Color(0xffD68426),
      image: 'assets/images/2.png',
      text: 'مكيف اسبلت',
      onTap: () => Navigator.pushNamed(context, 'WallCondition'),
    ),

    // مكيف جداري'
    CustomItem(
      color: kColorBlue,
      image: 'assets/images/1.png',
      text: 'مكيف جداري',
      onTap: () {},
    ),
    //مكيف مخفي
    CustomItem(
      color: Color(0xffDD4242),
      image: 'assets/images/3.png',
      text: 'مكيف مخفي',
      onTap: () {},
    ),
    //مكيف كاسيت
    CustomItem(
      color: Color(0xff27C341),
      image: 'assets/images/4.png',
      text: 'مكيف كاسيت',
      onTap: () {},
    ),
    //مكيف باكيج
    CustomItem(
      color: Color(0xff16C6DA),
      image: 'assets/images/5.png',
      text: 'مكيف باكيج',
      onTap: () {},
    ),
    //مكيف دولابي
    CustomItem(
      color: Color(0xff484693),
      image: 'assets/images/6.png',
      text: 'مكيف دولابي',
      onTap: () {},
    ),
  ];

  CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      height: 480,
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            mainAxisExtent: 140,
          ),
          itemCount: listItems.length,
          itemBuilder: (context, index) {
            return CustomItem(color: listItems[index].color, image: listItems[index].image, text: listItems[index].text);
          }),
    );
  }
}

class CustomItem extends StatelessWidget {
  CustomItem({super.key, required this.color, required this.image, required this.text, this.onTap});
  Color color;
  String image;
  String text;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Image.asset(
                image,
                // 'assets/1.png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              // 'مكيف جداري',
              text,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        height: 50,
      ),
    );
  }
}
