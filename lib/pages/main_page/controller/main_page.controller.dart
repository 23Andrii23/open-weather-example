import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/location/location_handler.dart';
import 'package:weather_app/models/weather_forecast/weather_forecast.dart';
import 'package:weather_app/models/weather_model/weather_model.dart';

import 'package:weather_app/service/service.dart';

part 'main_page.controller.freezed.dart';
part 'main_page.controller.g.dart';

@freezed
class MainControllerState with _$MainControllerState {
  factory MainControllerState({
    required WeatherResponse? weather,
    required WeatherForecast? forecast,
  }) = _MainControllerState;
}

@riverpod
class MainController extends _$MainController {
  final _weatherService = WeatherService();
  final _locationHandler = LocationHandler();

  @override
  FutureOr<MainControllerState?> build() async {
    state = const AsyncLoading();
    final currentPosition = await _locationHandler.getCurrentPosition();
    final city = currentPosition == null ? 'London' : null;

    final weather = await _weatherService.fetchWeather(
      lat: currentPosition?.latitude,
      lon: currentPosition?.longitude,
      city: city,
    );
    final forecast = await _weatherService.forecastWeather(
      lat: currentPosition?.latitude,
      lon: currentPosition?.longitude,
      city: city,
    );
    final value = MainControllerState(
      weather: weather,
      forecast: forecast,
    );
    state = AsyncData(value);
    return value;
  }

  Future<void> changeCity(String city) async {
    state = const AsyncLoading();
    final weather = await _weatherService.fetchWeather(city: city);
    final forecast = await _weatherService.forecastWeather(city: city);
    final value = MainControllerState(
      weather: weather,
      forecast: forecast,
    );
    state = AsyncData(value);
  }
}
