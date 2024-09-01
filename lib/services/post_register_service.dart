import 'package:athr_app/constants.dart';
import 'package:http/http.dart' as http;

class PostRegisterService {
  Future<void> register({required String email}) async {
    final url = "$baseUrl/api/register";
    http.Response response = await http.post(
      Uri.parse(url),
      body: {'email': email},
      headers: {'Accept': 'application/json', 'Accept-Language': 'ar'},
    );
    print(response.body);
  }
}
