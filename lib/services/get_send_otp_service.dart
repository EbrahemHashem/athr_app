import 'dart:convert';

import 'package:athr_app/constants.dart';
import 'package:athr_app/models/send_otp_model.dart';
import 'package:http/http.dart' as http;

class GetSendOtp {
  Future<void> sendOtp({required String email}) async {
    final url = "$baseUrl/api/send/otp?email=$email";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final sendOtpResponse = SendOtpModel.fromJson(jsonData);
      print('Mesaage : ${sendOtpResponse.message}');
      print('Status : ${sendOtpResponse.status}');
      print('Email : ${sendOtpResponse.data.email}');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
