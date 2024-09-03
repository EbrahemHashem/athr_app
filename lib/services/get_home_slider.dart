// import 'dart:convert';

// import 'package:athr_app/constants.dart';
// import 'package:athr_app/models/home_slider_model.dart';
// import 'package:http/http.dart' as http;

// class GetHomeSlider {
//   Future<List<HomeSliderModel>> homeSlider() async {
//     final url = "$baseUrl/api/home/slider";
//     final response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       List jsonData = jsonDecode(response.body);
//       List<HomeSliderModel> sliderList = [];
//       for (int i = 0; i < jsonData.length; i++) {
//         sliderList.add(
//           HomeSliderModel.fromJson(jsonData[i]),
//         );
//       }
//       return sliderList;
//       // final sliderResponse = HomeSliderModel.fromJson(jsonData);
//       // print(sliderResponse.message);
//     } else {
//       print('Request failed with status: ${response.body}.');
//     }
//   }
// }
