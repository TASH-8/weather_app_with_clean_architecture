import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app_with_clean_architecture/core/errors/faluires.dart';
import 'package:weather_app_with_clean_architecture/core/srtings/faliures.dart';
import 'package:weather_app_with_clean_architecture/features/weather/data/models/main_model.dart';
import 'package:weather_app_with_clean_architecture/features/weather/data/models/wind_model.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/entities/weather_main_entity.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/usecases/get_all_weather_usecase.dart';
part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetAllWeatherUseCase getAllWeather;
  WeatherBloc({required this.getAllWeather}) : super(const WeatherState()) {
    on<WeatherEvent>((event, emit) async {
      if (event is GetAllWeatherEvent) {
        emit(state.copyWith(status: WeatherStatus.loading));
        final faluireOrWeather = await getAllWeather();
        faluireOrWeather.fold(
            (faluire) => emit(state.copyWith(
                  messege: _mapFailureToMessage(faluire),
                  status: WeatherStatus.error,
                )),
            (weather) => emit(state.copyWith(
                status: WeatherStatus.loaded, weather: weather)));
      } else if (event is RefreshWeatherEvent) {
        emit(state.copyWith(status: WeatherStatus.loading));
        final faluireOrWeather = await getAllWeather();
        faluireOrWeather.fold(
            (faluire) => emit(state.copyWith(
                  messege: _mapFailureToMessage(faluire),
                  status: WeatherStatus.error,
                )),
            (weather) => emit(state.copyWith(
                status: WeatherStatus.loaded, weather: weather)));
      }
    });
  }
}

String _mapFailureToMessage(Faliure failure) {
  switch (failure.runtimeType) {
    case ServerFaliure:
      return SERVER_FAILURE_MESSAGE;
    case EmptyCacheFaliure:
      return EMPTY_CACHE_FAILURE_MESSAGE;
    case OfflineFaliure:
      return OFFLINE_FAILURE_MESSAGE;
    default:
      return "Unexpected Error , Please try again later .";
  }
}
