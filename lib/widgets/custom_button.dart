// ignore_for_file: must_be_immutable

import 'package:athr_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.onTap, required this.buttomText});

  final void Function()? onTap;
  String buttomText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 35),
          // width: MediaQuery.of(context).size.width,
          height: 70,
          decoration: BoxDecoration(
            color: kColorBlue,
            borderRadius: BorderRadius.circular(38),
          ),
          child: Center(
            child: Text(
              buttomText,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
        ));
  }
}
