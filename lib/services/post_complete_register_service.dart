import 'dart:convert';

import 'package:athr_app/constants.dart';
import 'package:athr_app/models/complete_register_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostCompleteRegisterService {
  Future<void> completeRegister({
    required String fName,
    required String lName,
    required String phone,
    required String password,
    required String passwordConfirm,
    required BuildContext context,
    // String? email,
    // String? otp,
    // String? token
  }) async {
    final url = '$baseUrl/api/complete/register';
    final response = await http.post(Uri.parse(url), body: {
      'f_name': fName,
      'l_name': lName,
      'phone': phone,
      'password': password,
      'password_confirmation': passwordConfirm,
      // 'email': email,
      // 'otp': otp,
      // 'fcm_token': token,
    }, headers: {
      'Accept': 'application/json',
      'Accept-Language': 'ar'
    });
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final registerResponse = CompleteRegisterModel.fromJson(jsonData);
      print('${registerResponse.message}');
      print('success');
      Navigator.pushReplacementNamed(context, 'HomePage');
    } else {
      print('error : ${response.statusCode}');
    }
  }
}
