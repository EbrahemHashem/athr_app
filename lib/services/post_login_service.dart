import 'dart:convert';

import 'package:athr_app/constants.dart';
import 'package:athr_app/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostLoginService {
  Future<dynamic> login({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    final url = '$baseUrl/api/login';
    final response = await http.post(Uri.parse(url), body: {
      'email': email,
      'password': password,
    }, headers: {
      'Accept': 'application/json',
      'Accept-Language': 'ar'
    });
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final loginResponse = LoginModel.fromJson(jsonData);
      print('token : ${loginResponse.data.token}');

      Navigator.pushReplacementNamed(context, 'HomePage');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("your email or password is not correct")));
      print('request failed with status : ${response.statusCode}');
    }
  }
}
