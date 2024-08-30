import 'package:athr_app/widgets/home%20page/custom_product.dart';
import 'package:flutter/material.dart';

class CustomProducts extends StatelessWidget {
  const CustomProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      height: 350,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(margin: EdgeInsets.only(left: 10), child: CustomProduct());
          }),
    );
  }
}
