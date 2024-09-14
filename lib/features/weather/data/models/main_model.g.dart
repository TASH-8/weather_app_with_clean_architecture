// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainModel _$MainModelFromJson(Map<String, dynamic> json) => MainModel(
      temp: (json['temp'] as num).toDouble(),
      feels_like: (json['feels_like'] - 273.15 as num).toDouble(),
      temp_min: (json['temp_min'] - 273.15 as num).toDouble(),
      temp_max: (json['temp_max'] - 273.15 as num).toDouble(),
      pressure: (json['pressure'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      sea_level: (json['sea_level'] as num).toDouble(),
      grnd_level: (json['grnd_level'] as num).toDouble(),
    );

Map<String, dynamic> _$MainModelToJson(MainModel instance) => <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'temp_min': instance.temp_min,
      'temp_max': instance.temp_max,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'sea_level': instance.sea_level,
      'grnd_level': instance.grnd_level,
    };
