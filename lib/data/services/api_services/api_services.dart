import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app_task/data/models/weather_model.dart';
import 'package:weather_app_task/utils/app_strings.dart';

class ApiServices {
  Future<WeatherModel> fetchWeatherByCityName(String cityName) async {
    final String city = "Islamabad";
    final String apiKey = "11f11a1c2218238f3f8d61d258ab849d";
    final String baseUrl = "https://api.openweathermap.org/data/2.5/forecast";

    final Uri uri = Uri.parse('$baseUrl?q=$city&appid=$apiKey');
    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        return WeatherModel.fromJson(data);
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      print(e);
      throw Exception("Error");
    }
  }

  // Future fetchWeather() async {
  //   final String city = "Islamabad";
  //   final String apiKey = "11f11a1c2218238f3f8d61d258ab849d";
  //   final String baseUrl = "https://api.openweathermap.org/data/2.5/forecast";

  //   final Uri uri = Uri.parse('$baseUrl?q=$city&appid=$apiKey');
  //   try {
  //     final response = await http.get(uri);

  //     if (response.statusCode == 200) {
  //       var data = jsonDecode(response.body);
  //       print(data);
  //       // print("data ${ WeatherModel.fromJson(data)}");
  //     }
  //   } catch (e) {
  //     print(e);
  //     throw Exception("Error");
  //   }
  // }
}
