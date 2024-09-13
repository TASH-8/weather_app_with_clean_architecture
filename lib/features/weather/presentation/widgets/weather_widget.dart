import 'package:flutter/material.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/entities/weather_main_entity.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/widgets/custom_listview_items.dart';

class WeatherWidget extends StatelessWidget {
  final WeatherMainEntity weather;
  const WeatherWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF676BD0),
      body: Center(
        child: ListView(
          children: [
            WeatherCustomListViewItems(weather: weather),
          ],
        ),
      ),
    );
  }
}
