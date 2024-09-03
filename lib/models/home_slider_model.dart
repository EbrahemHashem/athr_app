class HomeSliderModel {
  final String message;
  final int status;
  DataModel data;
  HomeSliderModel({
    required this.message,
    required this.status,
    required this.data,
  });

  static fromJson(jsonData) {}
}

class DataModel {
  final int id;
  final String image;

  DataModel({required this.id, required this.image});
  factory DataModel.fromJson(jsonData) {
    return DataModel(id: jsonData['id'], image: jsonData['image']);
  }
}
