import 'package:flutter/material.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/entities/weather_main_entity.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/widgets/details_container_widget.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/widgets/image_widget.dart';
import 'package:weather_app_with_clean_architecture/core/widgets/texts_widget.dart';

class WeatherCustomListViewItems extends StatelessWidget {
  const WeatherCustomListViewItems({
    super.key,
    required this.weather,
  });

  final WeatherMainEntity weather;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextCustomWidget(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            textInput: weather.name,
            textColor: Colors.white,
          ),
          TextCustomWidget(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              textInput: '${weather.main.temp.toStringAsFixed(2)} °C',
              textColor: Colors.white),
          TextCustomWidget(
              fontSize: 17,
              fontWeight: FontWeight.w300,
              textInput: weather.weather[0].main,
              textColor: Colors.white),
          const SizedBox(
            height: 30,
          ),
          const ImageWidget(),
          const SizedBox(
            height: 65,
          ),
          DetailsCustomContainer(weather: weather)
        ],
      ),
    );
  }
}
