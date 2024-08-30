import 'package:athr_app/widgets/home%20page/custom_product.dart';
import 'package:athr_app/widgets/wall%20condition%20page/custom_bar_wallconditin.dart';
import 'package:flutter/material.dart';

class WallCondition extends StatelessWidget {
  const WallCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: Builder(builder: (BuildContext context) {
      //   return FloatingActionButton.extended(
      //     onPressed: () {},
      //     label: CustomActionButton(),
      //     icon: Icon(Icons.add),
      //   );
      // }),
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
