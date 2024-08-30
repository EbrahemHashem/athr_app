import 'package:athr_app/constants.dart';
import 'package:athr_app/widgets/home%20page/custom_product.dart';
import 'package:athr_app/widgets/wall%20condition%20page/custom_bar_wallconditin.dart';
import 'package:flutter/material.dart';

class WallCondition extends StatelessWidget {
  const WallCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(color: kColorBlue, borderRadius: BorderRadius.circular(38)),
          width: 260,
          padding: EdgeInsets.all(22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'طلب عرض سعر',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Icon(
                Icons.add,
                color: Colors.white,
                size: 35,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.only(right: 15, left: 15, top: 30),
          child: ListView(children: [
            CustomBarWallConditon(),
            SingleChildScrollView(
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 12,
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisExtent: 300,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return CustomProduct();
                  }),
            ),
          ])),
    );
  }
}
