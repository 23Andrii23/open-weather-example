/// Uri builder class for the OpenWeatherMap API
class OpenWeatherMapAPI {
  OpenWeatherMapAPI(this.apiKey);
  final String apiKey;

  static const String _apiBaseUrl = 'api.openweathermap.org';
  static const String _apiPath = '/data/2.5/';

  Uri weather({String? city, double? lat, double? lon}) => _buildUri(
        endpoint: 'weather',
        parametersBuilder: () => _buildQueryParameters(
          city: city,
          lat: lat,
          lon: lon,
        ),
      );

  Uri forecast({String? city, double? lat, double? lon}) => _buildUri(
        endpoint: 'forecast',
        parametersBuilder: () => _buildQueryParameters(
          city: city,
          lat: lat,
          lon: lon,
        ),
      );

  Uri _buildUri({
    required String endpoint,
    required Map<String, dynamic> Function() parametersBuilder,
  }) {
    return Uri(
      scheme: 'https',
      host: _apiBaseUrl,
      path: '$_apiPath$endpoint',
      queryParameters: parametersBuilder(),
    );
  }

  Map<String, dynamic> _buildQueryParameters(
      {String? city, double? lat, double? lon}) {
    final params = <String, dynamic>{
      'appid': apiKey,
      'units': 'metric',
    };

    if (lat != null && lon != null) {
      params['lat'] = lat.toString();
      params['lon'] = lon.toString();
    } else if (city != null) {
      params['q'] = city;
    } else {
      throw ArgumentError('Either city or both lat and lon must be provided');
    }

    return params;
  }
}
