import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/entities/wind_entity.dart';
part 'wind_model.g.dart';

@JsonSerializable()
class WindModel extends WindEntity {
  const WindModel(
      {required super.speed, required super.deg, required super.gust});

  factory WindModel.fromJson(Map<String, dynamic> json) =>
      _$WindModelFromJson(json);

  Map<String, dynamic> toJson() => _$WindModelToJson(this);
}
