import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/entities/weather_main_entity.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/widgets/weather_widget.dart';

class RefreshWidget extends StatelessWidget {
  final WeatherMainEntity weather;
  const RefreshWidget({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        backgroundColor: const Color.fromARGB(255, 72, 68, 68),
        child: WeatherWidget(
          weather: weather,
        ),
        onRefresh: () => _onRefresh(context));
  }
}

Future<void> _onRefresh(BuildContext context) async {
  context.read<WeatherBloc>().add(RefreshWeatherEvent());
}
