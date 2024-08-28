import 'package:athr_app/widgets/home%20page/custom_buttom_navigation_bar.dart';
import 'package:athr_app/widgets/home%20page/custom_grid_view.dart';
import 'package:athr_app/widgets/home%20page/custom_home_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButtomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.only(right: 33, left: 33, top: 40),
        child: ListView(children: [
          CustomHomeBar(),
          CustomGridView(),
        ]),
      ),
    );
  }
}
