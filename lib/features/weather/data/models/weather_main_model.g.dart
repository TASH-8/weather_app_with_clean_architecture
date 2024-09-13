// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_main_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherMainModel _$WeatherMainModelFromJson(Map<String, dynamic> json) =>
    WeatherMainModel(
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      base: json['base'] as String,
      main: MainModel.fromJson(json['main'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num).toInt(),
      wind: WindModel.fromJson(json['wind'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherMainModelToJson(WeatherMainModel instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'name': instance.name,
      'base': instance.base,
      'main': instance.main,
      'visibility': instance.visibility,
      'wind': instance.wind,
    };
