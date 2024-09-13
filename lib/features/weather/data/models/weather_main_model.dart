import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app_with_clean_architecture/features/weather/data/models/main_model.dart';
import 'package:weather_app_with_clean_architecture/features/weather/data/models/weather_model.dart';
import 'package:weather_app_with_clean_architecture/features/weather/data/models/wind_model.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/entities/weather_main_entity.dart';
part 'weather_main_model.g.dart';

@JsonSerializable()
class WeatherMainModel extends WeatherMainEntity {
  const WeatherMainModel(
      {required super.weather,
      required super.name,
      required super.base,
      required super.main,
      required super.visibility,
      required super.wind});

  factory WeatherMainModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherMainModelToJson(this);
}
