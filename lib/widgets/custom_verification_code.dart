import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomVerificationCode extends StatefulWidget {
  final void Function(List<String>) onChangedLastItem;
  const CustomVerificationCode({
    super.key,
    required this.onChangedLastItem,
  });

  @override
  State<CustomVerificationCode> createState() => _CustomVerificationCodeState();
}

class _CustomVerificationCodeState extends State<CustomVerificationCode> {
  TextEditingController _txt1 = TextEditingController();
  TextEditingController _txt2 = TextEditingController();
  TextEditingController _txt3 = TextEditingController();
  TextEditingController _txt4 = TextEditingController();
  TextEditingController _txt5 = TextEditingController();
  final List<String> _otp = [];
  @override
  void initState() {
    _otp.addAll([
      _txt1.text,
      _txt2.text,
      _txt3.text,
      _txt4.text,
      _txt5.text,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomContainer(context, _txt1, onChanged: (text) {
          _otp[0] = text;
          widget.onChangedLastItem(_otp);
        }),
        CustomContainer(context, _txt2, onChanged: (text) {
          _otp[1] = text;
          widget.onChangedLastItem(_otp);
        }),
        CustomContainer(context, _txt3, onChanged: (text) {
          _otp[2] = text;
          widget.onChangedLastItem(_otp);
        }),
        CustomContainer(context, _txt4, onChanged: (text) {
          _otp[3] = text;
          widget.onChangedLastItem(_otp);
        }),
        CustomContainer(context, _txt5, onChanged: (text) {
          _otp[4] = text;
          widget.onChangedLastItem(_otp);
        }),
      ],
    );
  }
}

Widget CustomContainer(BuildContext context, TextEditingController controller, {void Function(String)? onChanged}) {
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
        if (onChanged != null) {
          onChanged(value);
        }
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
