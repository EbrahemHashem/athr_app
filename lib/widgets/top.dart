// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  Top({super.key, required this.text1, required this.text2});
  String text1;
  String text2;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset('assets/images/bakr.png'),
      const SizedBox(
        height: 50,
      ),
      Text(
        text1,
        style: const TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          textAlign: TextAlign.center,
          text2,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    ]);
  }
}
