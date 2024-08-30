import 'package:athr_app/constants.dart';
import 'package:flutter/material.dart';

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
