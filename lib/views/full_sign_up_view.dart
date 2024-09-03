// ignore_for_file: must_be_immutable

import 'dart:core';

import 'package:athr_app/services/post_complete_register_service.dart';
import 'package:athr_app/widgets/custom_button.dart';
import 'package:athr_app/widgets/custom_form_field_without_icon.dart';
import 'package:flutter/material.dart';

class FullSignUp extends StatefulWidget {
  FullSignUp({super.key});

  @override
  State<FullSignUp> createState() => _FullSignUpState();
}

class _FullSignUpState extends State<FullSignUp> {
  GlobalKey<FormState> formKey = GlobalKey();

  String? firstName;
  String? lastName;
  String? phone;
  String? password;
  String? passwordConfirm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 33, left: 33),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              // image
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.only(bottom: 10, top: 20),
                child: Image.asset(
                  'assets/images/user.png',
                ),
              ),

              const Text(
                'إستكمال البيانات',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  textAlign: TextAlign.center,
                  'قم بإستكمال بياناتك الشخصية لتتمكن من تسجيل حسابك',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              // first name
              CustomFormFieldWithoutIcon(
                onChanged: (data) {
                  firstName = data;
                },
                textInput: TextInputType.name,
                hintText: 'الاسم الأول',
              ),
              // last name
              CustomFormFieldWithoutIcon(
                onChanged: (data) {
                  lastName = data;
                },
                textInput: TextInputType.name,
                hintText: 'الاسم الأخير',
              ),
              //phone number
              CustomFormFieldWithoutIcon(
                onChanged: (data) {
                  phone = data;
                },
                textInput: TextInputType.number,
                hintText: 'رقم الجوال',
              ),
              // password
              CustomFormFieldWithoutIcon(
                onChanged: (data) {
                  password = data;
                },
                textInput: TextInputType.visiblePassword,
                hintText: 'كلمة المرور',
                preIcon: Icons.visibility_outlined,
              ),
              // password confirmatiton
              CustomFormFieldWithoutIcon(
                validator: (value) {
                  if (value!.isEmpty || value != password) {
                    return 'Please enter the same password as above';
                  }
                  return null;
                },
                onChanged: (data) {
                  passwordConfirm = data;
                },
                textInput: TextInputType.visiblePassword,
                hintText: 'تأكيد كلمة المرور',
                preIcon: Icons.visibility_outlined,
              ),

              //button
              CustomButton(
                buttomText: 'تأكيد',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    PostCompleteRegisterService().completeRegister(
                      fName: firstName!,
                      lName: lastName!,
                      phone: phone!,
                      password: password!,
                      passwordConfirm: passwordConfirm!,
                      context: context,
                    );
                    // Navigator.pushReplacementNamed(context, 'HomePage');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
