import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:weather_app_with_clean_architecture/core/errors/faluires.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/entities/weather_main_entity.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/repositories/weather_repo.dart';

@lazySingleton 
class GetAllWeatherUseCase {
  final WeatherRepository repository;

  GetAllWeatherUseCase(this.repository);

  Future<Either<Faliure, WeatherMainEntity>> call() async {
    return await repository.getAllWeather();
  }
}
