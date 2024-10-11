import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/api/api.dart';
import 'package:weather_app/api/api.keys.dart';
import 'package:weather_app/models/weather_forecast/weather_forecast.dart';
import 'package:weather_app/models/weather_model/weather_model.dart';

class WeatherService {
  final _api = OpenWeatherMapAPI(APIKeys.openWeatherAPIKey);
  Future<WeatherResponse?> fetchWeather({
    String? city,
    double? lat,
    double? lon,
  }) async {
    final response = await http.get(_api.weather(
      city: city,
      lat: lat,
      lon: lon,
    ));

    try {
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        final result = WeatherResponse.fromJson(json);
        return result;
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  Future<WeatherForecast?> forecastWeather({
    String? city,
    double? lat,
    double? lon,
  }) async {
    final response = await http.get(_api.forecast(
      city: city,
      lat: lat,
      lon: lon,
    ));
    try {
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        final result = WeatherForecast.fromJson(json);
        return result;
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
