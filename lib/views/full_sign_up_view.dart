import 'package:athr_app/widgets/custom_button.dart';
import 'package:athr_app/widgets/custom_form_field_without_icon.dart';
import 'package:flutter/material.dart';

class FullSignUp extends StatelessWidget {
  const FullSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 33, left: 33),
        child: Form(
          child: ListView(
            children: [
              // image
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.only(bottom: 10, top: 20),
                child: Image.asset(
                  'assets/user.png',
                ),
              ),

              const Text(
                'إستكمال البيانات',
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
                  'قم بإستكمال بياناتك الشخصية لتتمكن من تسجيل حسابك',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              // first name
              CustomFormFieldWithoutIcon(
                textInput: TextInputType.name,
                hintText: 'الاسم الأول',
              ),
              // last name
              CustomFormFieldWithoutIcon(
                textInput: TextInputType.name,
                hintText: 'الاسم الأخير',
              ),
              //phone number
              CustomFormFieldWithoutIcon(
                textInput: TextInputType.name,
                hintText: 'رقم الجوال',
              ),
              // password
              CustomFormFieldWithoutIcon(
                textInput: TextInputType.visiblePassword,
                hintText: 'كلمة المرور',
                preIcon: Icons.visibility_outlined,
              ),
              // password
              CustomFormFieldWithoutIcon(
                textInput: TextInputType.visiblePassword,
                hintText: 'تأكيد كلمة المرور',
                preIcon: Icons.visibility_outlined,
              ),

              //button
              CustomButton(
                buttomText: 'تأكيد',
                onTap: () => Navigator.pushReplacementNamed(context, 'HomePage'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
