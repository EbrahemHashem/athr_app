// ignore_for_file: must_be_immutable

import 'package:athr_app/constants.dart';
import 'package:athr_app/services/post_login_service.dart';
import 'package:athr_app/widgets/custom_button.dart';
import 'package:athr_app/widgets/custom_form_field.dart';
import 'package:athr_app/widgets/top.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  GlobalKey<FormState> formKey = GlobalKey();

  String? email;

  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 33, left: 33, top: 85),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Top(
                text1: 'تسجيل الدخول',
                text2: 'قم بادخال بريدك الالكتروني لتسجيل الدخول',
              ),

              // email
              CustomFormField(
                onChanged: (data) {
                  email = data;
                },
                textInput: TextInputType.emailAddress,
                icon: const Icon(Icons.sms_outlined),
                hintText: 'أدخل البريد الالكتروني',
              ),
              // password
              CustomFormField(
                onChanged: (data) {
                  password = data;
                },
                textInput: TextInputType.visiblePassword,
                hintText: 'أدخل كلمة المرور',
                icon: const Icon(Icons.lock_open_outlined),
                preIcon: Icons.visibility_outlined,
              ),
              //forget password
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'ForgetPassword'),
                child: const Text(
                  'هل نسيت كلمة المرور ؟ ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              //button
              CustomButton(
                buttomText: 'الدخول',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    PostLoginService().login(email: email!, password: password!, context: context);
                    print('object');
                  }
                },
              ),
              // ليس لديك حساب
              GestureDetector(
                  onTap: () => Navigator.pushReplacementNamed(context, 'SignUpView'),
                  child: const Text(
                    ' ليس لديك حساب ؟',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
              // تسجيل حساب جديد
              GestureDetector(
                  onTap: () => Navigator.pushReplacementNamed(context, 'SignUpView'),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 35,
                        ),
                      ),
                      Icon(
                        Icons.arrow_back,
                        color: Color.fromRGBO(29, 117, 177, 1),
                      ),
                      Text(
                        'تسجيل حساب جديد',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: kColorBlue),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
