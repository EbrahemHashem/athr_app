import 'package:athr_app/widgets/custom_button.dart';
import 'package:athr_app/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 33, left: 33),
        child: Form(
          child: ListView(
            children: [
              // image
              Image.asset('assets/sms-notification.png'),
              //
              const Text(
                'هل نسيت كلمة المرور ؟',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  textAlign: TextAlign.center,
                  "قم بإدخال بريدك الإلكتروني لإرسال كود التحقق ",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              // email
              CustomFormField(
                textInput: TextInputType.emailAddress,
                icon: Icons.sms_outlined,
                hintText: 'أدخل البريد الالكتروني',
              ),

              //button
              CustomButton(
                buttomText: 'ارسال',
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'ActivitionCodeView');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
