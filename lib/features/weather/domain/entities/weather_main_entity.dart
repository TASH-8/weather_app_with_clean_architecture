import 'package:equatable/equatable.dart';
import 'package:weather_app_with_clean_architecture/features/weather/data/models/main_model.dart';
import 'package:weather_app_with_clean_architecture/features/weather/data/models/weather_model.dart';
import 'package:weather_app_with_clean_architecture/features/weather/data/models/wind_model.dart';

class WeatherMainEntity extends Equatable {
  final List<WeatherModel> weather;
  final String name;
  final String base;
  final MainModel main;
  final int visibility;
  final WindModel wind;

  const WeatherMainEntity(
      {required this.weather,
      required this.name,
      required this.base,
      required this.main,
      required this.visibility,
      required this.wind});

  @override
  List<Object?> get props => [weather, name, base, main, visibility, wind];
}
