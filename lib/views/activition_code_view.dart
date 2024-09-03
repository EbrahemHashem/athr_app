// ignore_for_file: must_be_immutable

import 'package:athr_app/services/get_check_otp_service.dart';
import 'package:athr_app/widgets/custom_button.dart';
import 'package:athr_app/widgets/custom_verification_code.dart';
import 'package:flutter/material.dart';

class ActivitionCodeView extends StatefulWidget {
  final String email;
  ActivitionCodeView({super.key, required this.email});

  @override
  State<ActivitionCodeView> createState() => _ActivitionCodeViewState();
}

class _ActivitionCodeViewState extends State<ActivitionCodeView> {
  GlobalKey<FormState> formKey = GlobalKey();
  late List<String> otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 33, left: 33, top: 85),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Image.asset('assets/images/star group.png'),
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
              CustomVerificationCode(
                onChangedLastItem: (otp) {
                  setState(() {
                    this.otp = otp;
                  });
                },
              ),

              //button
              CustomButton(
                buttomText: 'تحقق',
                onTap: () {
                  // final otp = txt1.tostring + ;
                  if (formKey.currentState!.validate()) {
                    _checkOtp(widget.email ?? "");
                    // Navigator.pushReplacementNamed(context, 'FullSignUp');
                  }
                },
              ),
              const Text(
                'لم يتم إرسال كود التحقق ؟',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              //أرسل الكود مرة أخرى
              GestureDetector(
                  onTap: () => Navigator.pushReplacementNamed(context, 'ForgetPassword'),
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

  void _checkOtp(String email) {
    String otpAsString = otp.join(); // true
    int otpAsInt = int.parse(otpAsString);

    GetCheckOtpService().checkOtp(email: email, otp: otpAsInt, context: context);
  }
}
