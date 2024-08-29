// ignore_for_file: must_be_immutable

import 'package:athr_app/widgets/custom_button.dart';
import 'package:athr_app/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});
  GlobalKey<FormState> formKey = GlobalKey();
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
              Image.asset('assets/images/sms-notification.png'),
              //
              const Text(
                textAlign: TextAlign.center,
                'هل نسيت كلمة المرور ؟',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  textAlign: TextAlign.center,
                  "قم بإدخال بريدك الإلكتروني لإرسال كود التحقق ",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              // email
              CustomFormField(
                textInput: TextInputType.emailAddress,
                icon: const Icon(Icons.sms_outlined),
                hintText: 'أدخل البريد الالكتروني',
              ),

              //button
              CustomButton(
                buttomText: 'إرسال',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacementNamed(context, 'ActivitionCodeView');
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
