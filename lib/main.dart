import 'package:athr_app/views/activition_code_view.dart';
import 'package:athr_app/views/forget_password.dart';
import 'package:athr_app/views/sign_in_view.dart';
import 'package:athr_app/views/sign_up_view.dart';
import 'package:athr_app/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AthrApp());
}

class AthrApp extends StatelessWidget {
  const AthrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'SignUpView': (context) => const SignUpView(),
        'SignInView': (context) => const SignInView(),
        'ForgetPassword': (context) => const ForgetPassword(),
        'ActivitionCodeView': (context) => const ActivitionCodeView(),
      },
      theme: ThemeData(fontFamily: 'Almarai'),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
