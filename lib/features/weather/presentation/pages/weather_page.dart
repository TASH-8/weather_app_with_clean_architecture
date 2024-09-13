import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/widgets/loading.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/widgets/meesege_diplay_widget.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/widgets/refresh_widget.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }
}

Widget _buildBody() {
  return BlocBuilder<WeatherBloc, WeatherState>(
    builder: (context, state) {
      switch (state.status) {
        case WeatherStatus.loading:
          return const LoadingWidget();

        case WeatherStatus.error:
          return MessegeDisplayWidget(
            messege: state.messege,
          );

        case WeatherStatus.loaded:
          return RefreshWidget(
            weather: state.weather,
          );
      }
    },
  );
}
