import 'package:athr_app/widgets/custom_button.dart';
import 'package:athr_app/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 33, left: 33),
        child: Form(
          child: ListView(
            children: [
              // image
              Image.asset('assets/eye_unlock_twotone.png'),
              //
              const Text(
                'كلمة المرور الجديدة',
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
                  'قم بتعيين كلمة المرور الجديدة الخاصة بحسابك',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              // password
              CustomFormField(
                textInput: TextInputType.visiblePassword,
                hintText: 'كلمة المرور الجديدة',
                icon: const Icon(Icons.lock_open_outlined),
                preIcon: Icons.visibility_outlined,
              ),
              // password
              CustomFormField(
                textInput: TextInputType.visiblePassword,
                hintText: 'تأكيد كلمة المرور الجديدة',
                icon: const Icon(Icons.lock_open_outlined),
                preIcon: Icons.visibility_outlined,
              ),

              //button
              CustomButton(
                buttomText: 'تأكيد',
                onTap: () {
                  // Navigator.pushReplacementNamed(context, 'ActivitionCodeView');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
