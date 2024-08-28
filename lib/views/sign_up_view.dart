// ignore_for_file: must_be_immutable

import 'package:athr_app/widgets/custom_button.dart';
import 'package:athr_app/widgets/custom_form_field.dart';
import 'package:athr_app/widgets/top.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key, this.email});
  String? email;
  GlobalKey<FormState> formKey = GlobalKey();
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
                text1: 'تسجيل حساب جديد',
                text2: 'قم بإدخال بريدك الإلكتروني لتسجيل حساب جديد',
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

              //button
              CustomButton(
                buttomText: 'تسجيل',
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    EmailOTP.config(
                      appName: 'bakr conditon',
                      otpType: OTPType.numeric,
                      expiry: 30000,
                      emailTheme: EmailTheme.v6,
                      appEmail: 'me@bakrcondition.com',
                      otpLength: 5,
                    );
                    EmailOTP.sendOTP(email: email.toString());
                    if (await EmailOTP.sendOTP(email: email!) == true) {
                      Navigator.pushReplacementNamed(context, 'ActivitionCodeView');
                    }
                  }
                },
              ),
              const SizedBox(
                height: 60,
              ),
              // لديك حساب بالفعل
              GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'SignInView');
                  },
                  child: const Text(
                    'لديك حساب بالفعل ؟',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
              // تسجيل الدخول
              GestureDetector(
                  onTap: () => Navigator.pushReplacementNamed(context, 'SignInView'),
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
                        'تسجيل الدخول',
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
