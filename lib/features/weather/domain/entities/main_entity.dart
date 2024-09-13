import 'package:equatable/equatable.dart';

class MainEntity extends Equatable {
  final double temp;
  final double feels_like;
  final double temp_min;
  final double temp_max;
  final double pressure;
  final double humidity;
  final double sea_level;
  final double grnd_level;

  const MainEntity(
      {required this.temp,
      required this.feels_like,
      required this.temp_min,
      required this.temp_max,
      required this.pressure,
      required this.humidity,
      required this.sea_level,
      required this.grnd_level});

  @override
  List<Object?> get props => [
        temp,
        feels_like,
        temp_min,
        temp_max,
        pressure,
        humidity,
        sea_level,
        grnd_level
      ];
}
