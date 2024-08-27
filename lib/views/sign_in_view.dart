import 'package:athr_app/widgets/custom_button.dart';
import 'package:athr_app/widgets/custom_form_field.dart';
import 'package:athr_app/widgets/top.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 33, left: 33, top: 50),
        child: Form(
          child: ListView(
            children: [
              Top(
                text1: 'تسجيل الدخول',
                text2: 'قم بادخال بريدك الالكتروني لتسجيل الدخول',
              ),

              // email
              CustomFormField(
                textInput: TextInputType.emailAddress,
                icon: Icons.sms_outlined,
                hintText: 'أدخل البريد الالكتروني',
              ),
              // password
              CustomFormField(
                textInput: TextInputType.visiblePassword,
                hintText: 'أدخل كلمة المرور',
                icon: Icons.lock_open_outlined,
                preIcon: Icons.visibility_outlined,
              ),
              //forget password
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'هل نسيت كلمة المرور ؟ ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              //button
              CustomButton(buttomText: 'الدخول'),
              // ليس لديك حساب
              GestureDetector(
                  child: const Text(
                ' ليس لديك حساب ؟',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              )),
              // تسجيل حساب جديد
              GestureDetector(
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
                    style: TextStyle(fontSize: 18, color: Color.fromRGBO(29, 117, 177, 1)),
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
