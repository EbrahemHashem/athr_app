class SendOtpModel {
  final String message;
  final int status;
  final DataModel data;

  SendOtpModel({
    required this.data,
    required this.message,
    required this.status,
  });
  factory SendOtpModel.fromJson(jsonData) {
    return SendOtpModel(
      message: jsonData['message'],
      status: jsonData['status'],
      data: DataModel.fromJson(jsonData['data']),
    );
  }
}

class DataModel {
  final String email;
  DataModel({required this.email});
  factory DataModel.fromJson(jsonData) {
    return DataModel(email: jsonData['email']);
  }
}
