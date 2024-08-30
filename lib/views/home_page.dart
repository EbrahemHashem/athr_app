import 'package:athr_app/widgets/home%20page/custom_buttom_navigation_bar.dart';
import 'package:athr_app/widgets/home%20page/custom_grid_view.dart';
import 'package:athr_app/widgets/home%20page/custom_home_bar.dart';
import 'package:athr_app/widgets/home%20page/custom_horizontal_slide.dart';
import 'package:athr_app/widgets/home%20page/custom_products.dart';
import 'package:athr_app/widgets/home%20page/custom_row.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCDDEC),
      bottomNavigationBar: CustomButtomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 30),
        child: ListView(children: [
          CustomHomeBar(),
          CustomHorizontalSlide(),
          CustomGridView(),
          CustomRow(text1: 'الأكثر مبيعا', text2: 'أكثر منتجاتنا تحقيقا للمبيعات'),
          CustomProducts(),
          CustomRow(text1: 'فتحات التكييف الألومنيوم', text2: 'مبيعات فتحات التكييف الألومنيوم المتاحة لدينا'),
          CustomProducts(),
        ]),
      ),
    );
  }
}
