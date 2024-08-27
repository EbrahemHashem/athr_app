import 'package:athr_app/widgets/custom_button.dart';
import 'package:athr_app/widgets/custom_verification_code.dart';
import 'package:flutter/material.dart';

class ActivitionCodeView extends StatelessWidget {
  const ActivitionCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 33, left: 33, top: 85),
        child: Form(
          child: ListView(
            children: [
              Image.asset('assets/star group.png'),
              const SizedBox(
                height: 75,
              ),

              const Text(
                'كود التحقق',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  textAlign: TextAlign.center,
                  'قم بكتابة كود التحقق المكون من 5 أرقام الذي تم إرساله إليك عبر البريد الإلكتروني',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const CustomVerificationCode(),

              //button
              CustomButton(
                buttomText: 'تحقق',
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'NewPassword');
                },
              ),
              GestureDetector(
                  onTap: () => Navigator.pushReplacementNamed(context, 'SignUpView'),
                  child: const Text(
                    'لم يتم إرسال كود التحقق ؟',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),
              //أرسل الكود مرة أخرى
              GestureDetector(
                  onTap: () {},
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 35,
                        ),
                      ),
                      Icon(
                        Icons.refresh_rounded,
                        color: Color.fromRGBO(29, 117, 177, 1),
                      ),
                      Text(
                        'أرسل الكود مرة أخرى',
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
