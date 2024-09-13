import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:weather_app_with_clean_architecture/core/errors/exceptions.dart';
import 'package:weather_app_with_clean_architecture/features/weather/data/models/weather_main_model.dart';

import 'package:weather_app_with_clean_architecture/features/weather/domain/entities/weather_main_entity.dart';

abstract class WeatherRemoteDataSource {
  Future<WeatherMainEntity> getAllWeather();
}

const key = "28269116c39625239169970d820fe946";
const API_URL =
    "https://api.openweathermap.org/data/2.5/weather?lat=33.510414&lon=36.278336&appid=$key";

@LazySingleton(as: WeatherRemoteDataSource)
class WeatherRemoteDataSourceImp extends WeatherRemoteDataSource {
  final dio = Dio();
  final http.Client client;
  WeatherRemoteDataSourceImp({required this.client});
  @override
  Future<WeatherMainEntity> getAllWeather() async {
    final response = await dio.get(API_URL);

    if (response.statusCode == 200) {
      final weather = WeatherMainModel.fromJson(response.data);
      return weather;
    } else {
      throw ServerException();
    }
  }
}
