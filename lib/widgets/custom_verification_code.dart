import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomVerificationCode extends StatefulWidget {
  const CustomVerificationCode({
    super.key,
  });

  @override
  State<CustomVerificationCode> createState() => _CustomVerificationCodeState();
}

class _CustomVerificationCodeState extends State<CustomVerificationCode> {
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();
  TextEditingController txt5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomContainer(context, txt1),
        CustomContainer(context, txt2),
        CustomContainer(context, txt3),
        CustomContainer(context, txt4),
        CustomContainer(context, txt5),
      ],
    );
  }
}

Widget CustomContainer(BuildContext context, TextEditingController controller) {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: const Color.fromARGB(255, 242, 237, 220),
    ),
    child: TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'مطلوب';
        }
        return null;
      },
      controller: controller,
      textAlignVertical: TextAlignVertical.center,
      showCursor: false,
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        // counterText: ,
        border: InputBorder.none,
      ),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly,
      ],
    ),
  );
}
