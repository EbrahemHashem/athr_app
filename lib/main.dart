import 'package:athr_app/views/activition_code_view.dart';
import 'package:athr_app/views/forget_password.dart';
import 'package:athr_app/views/full_sign_up_view.dart';
import 'package:athr_app/views/home_page.dart';
import 'package:athr_app/views/new_password_view.dart';
import 'package:athr_app/views/sign_in_view.dart';
import 'package:athr_app/views/sign_up_view.dart';
import 'package:athr_app/views/splash_screen.dart';
import 'package:athr_app/views/wall_condition.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AthrApp());
}

class AthrApp extends StatelessWidget {
  const AthrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case 'ActivitionCodeView':
            final args = settings.arguments as String; // Replace YourDataType with the actual type
            return MaterialPageRoute(
              builder: (context) => ActivitionCodeView(email: args),
            );
          default:
            return null;
        }
      },
      routes: {
        'SignUpView': (context) => SignUpView(),
        'SignInView': (context) => SignInView(),
        'ForgetPassword': (context) => ForgetPassword(),
        // 'ActivitionCodeView': (context) => ActivitionCodeView(),
        'NewPassword': (context) => NewPassword(),
        'FullSignUp': (context) => FullSignUp(),
        'HomePage': (context) => const HomePage(),
        'WallCondition': (context) => WallCondition(),
      },
      theme: ThemeData(fontFamily: 'Almarai'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
