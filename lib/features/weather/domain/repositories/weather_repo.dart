import 'package:weather_app_with_clean_architecture/core/errors/faluires.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/entities/weather_main_entity.dart';
import 'package:dartz/dartz.dart';

abstract class WeatherRepository {
  Future<Either<Faliure, WeatherMainEntity>> getAllWeather();
}
