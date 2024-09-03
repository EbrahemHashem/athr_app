import 'dart:convert';

import 'package:athr_app/constants.dart';
import 'package:athr_app/models/send_otp_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetSendOtp {
  Future<void> sendOtp({required String email, required BuildContext context}) async {
    //
    final postUrl = "$baseUrl/api/register";
    http.Response postresponse = await http.post(
      Uri.parse(postUrl),
      body: {'email': email},
      headers: {'Accept': 'application/json', 'Accept-Language': 'ar'},
    );
    if (postresponse.statusCode == 200) {
      //get
      final url = "$baseUrl/api/send/otp?email=$email";
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        final sendOtpResponse = SendOtpModel.fromJson(jsonData);
        print('Mesaage : ${sendOtpResponse.message}');
        print('Status : ${sendOtpResponse.status}');
        print('Email : ${sendOtpResponse.data.email}');
        // navigation to otp code
        Navigator.pushNamed(context, 'ActivitionCodeView', arguments: sendOtpResponse.data.email);
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
        "your email is already sign up",
        style: TextStyle(
          color: Colors.red,
        ),
      )));
      print('request failed with status : ${postresponse.statusCode}');
    }
  }
}
