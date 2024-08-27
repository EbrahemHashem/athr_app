import 'package:athr_app/widgets/custom_button.dart';
import 'package:athr_app/widgets/custom_form_field.dart';
import 'package:athr_app/widgets/top.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 33, left: 33, top: 85),
        child: Form(
          child: ListView(
            children: [
              Top(
                text1: 'تسجيل حساب جديد',
                text2: 'قم بإدخال بريدك الإلكتروني لتسجيل حساب جديد',
              ),

              // email
              CustomFormField(
                textInput: TextInputType.emailAddress,
                icon: const Icon(Icons.sms_outlined),
                hintText: 'أدخل البريد الالكتروني',
              ),

              //button
              CustomButton(
                buttomText: 'تسجيل',
                onTap: () {
                  // Navigator.pushReplacementNamed(context, 'SignUpView');
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
