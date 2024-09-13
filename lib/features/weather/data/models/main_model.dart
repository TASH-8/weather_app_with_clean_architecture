import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/entities/main_entity.dart';
part 'main_model.g.dart';

@JsonSerializable()
class MainModel extends MainEntity {
  const MainModel(
      {required super.temp,
      required super.feels_like,
      required super.temp_min,
      required super.temp_max,
      required super.pressure,
      required super.humidity,
      required super.sea_level,
      required super.grnd_level});

  factory MainModel.fromJson(Map<String, dynamic> json) =>
      _$MainModelFromJson(json);

  Map<String, dynamic> toJson() => _$MainModelToJson(this);
}
