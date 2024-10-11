import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/models/main/main.dart';
import 'package:weather_app/models/weather/weather.dart';

part 'weather_forecast.freezed.dart';
part 'weather_forecast.g.dart';

// ignore_for_file:invalid_annotation_target
@freezed
class WeatherForecast with _$WeatherForecast {
  factory WeatherForecast({
    String? cod,
    int? message,
    int? cnt,
    List<Forecast>? list,
  }) = _WeatherForecast;

  factory WeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastFromJson(json);
}

@freezed
class Forecast with _$Forecast {
  factory Forecast({
    int? dt,
    Main? main,
    List<Weather>? weather,
    Clouds? clouds,
    Wind? wind,
    int? visibility,
    double? pop,
    Sys? sys,
    @JsonKey(name: 'dt_txt') String? dxTxt,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}

@freezed
class Clouds with _$Clouds {
  factory Clouds({
    int? all,
  }) = _Clouds;

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
}

@freezed
class Wind with _$Wind {
  factory Wind({
    double? speed,
    int? deg,
    double? gust,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}

@freezed
class Sys with _$Sys {
  factory Sys({String? pod}) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}
