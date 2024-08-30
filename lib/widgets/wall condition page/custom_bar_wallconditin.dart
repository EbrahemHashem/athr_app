import 'package:athr_app/constants.dart';
import 'package:flutter/material.dart';

class CustomBarWallConditon extends StatelessWidget {
  const CustomBarWallConditon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'فلترة النتائج',
              style: TextStyle(color: Color(0xff878383), fontSize: 12),
            ),
            Icon(Icons.filter_alt_outlined),
          ],
        ),
        Text(
          'مكيف جداري',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        IconButton(
          icon: Icon(
            Icons.arrow_forward_rounded,
          ),
          color: kColorBlue,
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'HomePage');
          },
        ),
      ],
    );
  }
}
