class LoginModel {
  final String message;
  final int status;
  final DataModel data;
  LoginModel({required this.message, required this.status, required this.data});

  factory LoginModel.fromJson(jsonData) {
    return LoginModel(
      message: jsonData['message'],
      status: jsonData['status'],
      data: DataModel.fromJson(jsonData['data']),
    );
  }
}

class DataModel {
  final String token;
  final String f_name;
  final String l_name;

  final String email;
  final String phone;

  DataModel({
    required this.token,
    required this.f_name,
    required this.l_name,
    required this.email,
    required this.phone,
  });
  factory DataModel.fromJson(jsonData) {
    return DataModel(
      token: jsonData['token'],
      f_name: jsonData['f_name'],
      l_name: jsonData['l_name'],
      email: jsonData['email'],
      phone: jsonData['phone'],
    );
  }
}
