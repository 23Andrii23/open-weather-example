import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:weather_app/models/weather_forecast/weather_forecast.dart';

class HourlyWeather extends StatelessWidget {
  final WeatherForecast? forecast;
  const HourlyWeather({
    required this.forecast,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final items = forecast?.list ?? [];
    return SfCartesianChart(
      primaryXAxis: DateTimeAxis(
        dateFormat: DateFormat.MMMd(),
        intervalType: DateTimeIntervalType.hours,
        interval: 6,
        majorGridLines: const MajorGridLines(width: 0),
        labelRotation: 45,
        enableAutoIntervalOnZooming: true,
      ),
      primaryYAxis: const NumericAxis(
        labelFormat: '{value}°C',
        axisLine: AxisLine(width: 0),
        majorTickLines: MajorTickLines(size: 0),
      ),
      zoomPanBehavior: ZoomPanBehavior(
        enablePanning: true,
        enablePinching: true,
        zoomMode: ZoomMode.x,
      ),
      tooltipBehavior: TooltipBehavior(enable: true),
      series: [
        SplineSeries<Forecast, DateTime>(
          dataSource: items,
          xValueMapper: (Forecast data, _) =>
              DateTime.fromMillisecondsSinceEpoch(data.dt! * 1000),
          yValueMapper: (Forecast data, _) => data.main?.temp,
          name: 'Temperature',
          color: Colors.yellow,
          markerSettings: const MarkerSettings(isVisible: true),
        ),
      ],
    );
  }
}
