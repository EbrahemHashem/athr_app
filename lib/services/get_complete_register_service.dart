import 'package:athr_app/constants.dart';
import 'package:http/http.dart' as http;

class GetCompleteRegisterService {
  Future<void> completeRegister(
      {required String fName,
      required String lName,
      required String phone,
      required String password,
      required String passwordConfirm,
      required String email,
      required String otp,
      required String token}) async {
    final url = '$baseUrl/api/complete/register';
    final response = await http.post(Uri.parse(url), body: {
      'f_name': fName,
      'l_name': lName,
      'phone': phone,
      'password': password,
      'password_confirmation': passwordConfirm,
      'email': email,
      'otp': otp,
      'fcm_token': token,
    }, headers: {
      'Accept': 'application/json',
      'Accept-Language': 'ar'
    });
    if (response.statusCode == 200) {}
  }
}
