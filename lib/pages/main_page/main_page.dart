import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/pages/main_page/controller/main_page.controller.dart';
import 'package:weather_app/pages/main_page/widgets/gradient_weather_card.dart';
import 'package:weather_app/pages/main_page/widgets/hourly_weather.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weather = ref.watch(mainControllerProvider);
    return weather.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(child: Text(error.toString())),
      data: (_) => Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: _buildMainWeatherCard(context, weather.value, ref),
              ),
              Expanded(
                flex: 1,
                child: _buildWeatherInfoCards(weather.value),
              ),
              Expanded(
                flex: 1,
                child: HourlyWeather(forecast: weather.value?.forecast),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainWeatherCard(
    BuildContext context,
    MainControllerState? state,
    WidgetRef ref,
  ) {
    if (state == null) {
      return const Center(child: CircularProgressIndicator());
    }
    final date = state.weather?.dt != null
        ? DateTime.fromMillisecondsSinceEpoch(state.weather!.dt! * 1000)
        : DateTime.now();
    final weatherId = state.weather?.weather?.first.id ?? 0;
    var cityName = '';
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue.shade800,
      ),
      child: Stack(
        children: [
          Image.asset(
            getWeatherImage(weatherId),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              DateFormat('d MMMM, EEEE').format(date),
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Positioned(
            top: 40,
            right: 10,
            child: Column(
              children: [
                Text(
                  '${state.weather?.main?.temp?.toStringAsFixed(1) ?? 0}° C',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Feels like ${state.weather?.main?.feelsLike?.toStringAsFixed(1) ?? 0}° C',
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Search'),
                            content: TextField(
                              onChanged: (v) => cityName = v,
                              decoration: const InputDecoration(
                                hintText: 'Enter city name',
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () {
                                  ref
                                      .read(mainControllerProvider.notifier)
                                      .changeCity(cityName);
                                  Navigator.pop(context);
                                },
                                child: const Text('Search'),
                              ),
                            ],
                          );
                        });
                  },
                ),
                Text(
                  state.weather?.name ?? '',
                  style: const TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeatherInfoCards(MainControllerState? state) {
    if (state == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: GradientWeatherCard(
              title: 'Wind',
              value: '${state.weather?.wind?.speed ?? 0} m/s',
              icon: Icons.air,
              gradientPosition: GradientPosition.top,
            ),
          ),
          Expanded(
            child: GradientWeatherCard(
              title: 'Pressure',
              value: state.weather?.main?.pressure?.toString() ?? '0',
              icon: Icons.thermostat_outlined,
              gradientPosition: GradientPosition.right,
            ),
          ),
          Expanded(
            child: GradientWeatherCard(
              title: 'Humidity',
              value: '${state.weather?.main?.humidity ?? 0}%',
              icon: Icons.water_drop_outlined,
              gradientPosition: GradientPosition.down,
            ),
          ),
        ],
      ),
    );
  }

  String getWeatherImage(int weatherCode) {
    if (weatherCode >= 200 && weatherCode < 300) {
      return 'assets/images/storm.jpg';
    } else if (weatherCode >= 300 && weatherCode < 400) {
      return 'assets/images/rainy.jpg';
    } else if (weatherCode >= 500 && weatherCode < 600) {
      return 'assets/images/rainy.jpg';
    } else if (weatherCode >= 600 && weatherCode < 700) {
      return 'assets/images/snowy.jpg';
    } else if (weatherCode >= 700 && weatherCode < 800) {
      return 'assets/images/sun_shower.jpg';
    } else if (weatherCode == 800) {
      return 'assets/images/sunny.jpg';
    } else if (weatherCode > 800 && weatherCode < 900) {
      return 'assets/images/cloudy.jpg';
    } else {
      return 'assets/images/cloudy.jpg';
    }
  }
}
