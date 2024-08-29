import 'package:athr_app/constants.dart';
import 'package:athr_app/widgets/home%20page/custom_product.dart';
import 'package:flutter/material.dart';

class WallCondition extends StatelessWidget {
  const WallCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton.extended(
          onPressed: () {},
          label: CustomActionButton(),
          icon: Icon(Icons.add),
        );
      }),
      body: Padding(
          padding: EdgeInsets.only(right: 15, left: 15, top: 40),
          child: Column(
            children: [
              CustomBarWallConditon(),
              GridView.builder(
                  gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12, mainAxisExtent: 140),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return CustomProduct();
                  })
            ],
          )),
    );
  }
}

class CustomBarWallConditon extends StatelessWidget {
  const CustomBarWallConditon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.arrow_forward_rounded),
        Text('مكيف جداري'),
        Row(
          children: [
            Icon(Icons.filter_alt_outlined),
            Text('فلترة النتائج'),
          ],
        )
      ],
    );
  }
}

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 35),
      height: 70,
      decoration: BoxDecoration(
        color: kColorBlue,
        borderRadius: BorderRadius.circular(38),
      ),
      child: Center(
        child: Text(
          'buttomText',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
