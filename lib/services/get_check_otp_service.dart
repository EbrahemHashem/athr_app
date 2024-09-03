import 'dart:convert';

import 'package:athr_app/constants.dart';
import 'package:athr_app/models/send_otp_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetCheckOtpService {
  Future<void> checkOtp({required String email, required int otp, required BuildContext context}) async {
    final url = "$baseUrl/api/check/otp?email=$email&otp=$otp";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final sendOtpResponse = SendOtpModel.fromJson(jsonData);
      print('Mesaage : ${sendOtpResponse.message}');
      print('Status : ${sendOtpResponse.status}');
      print('Email : ${sendOtpResponse.data.email}');
      Navigator.pushReplacementNamed(context, 'FullSignUp');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Wrong Otp ,please try again")));
      print('Request failed with status: ${response.body}.');
    }
  }
}
