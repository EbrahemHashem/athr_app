// ignore_for_file: must_be_immutable

import 'package:athr_app/constants.dart';
import 'package:flutter/material.dart';

class CustomFormFieldWithoutIcon extends StatelessWidget {
  CustomFormFieldWithoutIcon({super.key, required this.textInput, this.onChanged, required this.hintText, this.preIcon, this.onTap});
  String hintText;
  void Function()? onTap;
  TextInputType textInput;
  IconData? preIcon;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: TextFormField(
          textAlign: TextAlign.right,
          validator: (data) {
            if (data!.isEmpty) {
              return 'الحقل مطلوب';
            }
            return null;
          },
          onChanged: onChanged,
          keyboardType: textInput,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(right: 20, top: 15, bottom: 15),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  preIcon,
                  size: 24,
                ),
              ),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 16),
            filled: true,
            fillColor: kColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(38),
            ),
          ),
        ),
      ),
    ]);
  }
}
