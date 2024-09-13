// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'weather_bloc.dart';

enum WeatherStatus { loading, loaded, error }

class WeatherState extends Equatable {
  final WeatherStatus status;
  final WeatherMainEntity weather;
  final String messege;

  const WeatherState({
    this.weather = const WeatherMainEntity(
        weather: [],
        name: '',
        base: '',
        main: MainModel(
            temp: 0,
            feels_like: 0,
            temp_min: 0,
            temp_max: 0,
            pressure: 0,
            humidity: 0,
            sea_level: 0,
            grnd_level: 0),
        visibility: 0,
        wind: WindModel(speed: 0, deg: 0, gust: 0)),
    this.status = WeatherStatus.loading,
    this.messege = '',
  });

  WeatherState copyWith({
    WeatherStatus? status,
    WeatherMainEntity? weather,
    String? messege,
  }) {
    return WeatherState(
      status: status ?? this.status,
      weather: weather ?? this.weather,
      messege: messege ?? this.messege,
    );
  }

  @override
  List<Object?> get props => [status, weather, messege];
}
