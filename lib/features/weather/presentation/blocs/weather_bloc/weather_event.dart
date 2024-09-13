part of 'weather_bloc.dart';

sealed class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class GetAllWeatherEvent extends WeatherEvent {}

class RefreshWeatherEvent extends WeatherEvent {}
