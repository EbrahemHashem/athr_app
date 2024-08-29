// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  CustomRow({super.key, required this.text1, required this.text2});
  String text1;
  String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 35, top: 35),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(children: [
              IconButton(
                padding: EdgeInsets.all(0),
                onPressed: () {},
                color: Color(0xffCA7009),
                icon: Icon(Icons.arrow_back_ios_new),
              ),
              // text
              Text(
                'عرض المزيد',
                style: TextStyle(color: Color(0xffCA7009), fontSize: 12),
              ),
            ]),
            Container(
              width: 220,
              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(
                  textAlign: TextAlign.start,
                  text1,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, height: 3),
                ),
                Text(
                  textAlign: TextAlign.right,
                  maxLines: 2,
                  text2,
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xff878383),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
