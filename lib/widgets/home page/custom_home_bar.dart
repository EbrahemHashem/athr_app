import 'package:flutter/material.dart';

class CustomHomeBar extends StatelessWidget {
  const CustomHomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.wechat_sharp,
                size: 28,
              ),
            ),
            Icon(
              Icons.search,
              size: 28,
            ),
          ],
        ),
        Text(
          'مرحبا , اسم المستخدم',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
