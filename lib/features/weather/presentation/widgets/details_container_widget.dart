import 'package:flutter/material.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/entities/weather_main_entity.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/widgets/detail_second_custom_row_widget.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/widgets/details_first_custom_row_widget.dart';

class DetailsCustomContainer extends StatelessWidget {
  const DetailsCustomContainer({
    super.key,
    required this.weather,
  });

  final WeatherMainEntity weather;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DetailFirstCustomRow(weather: weather),
            const Divider(),
            DetailSecondCustomRow(weather: weather)
          ],
        ),
      ),
    );
  }
}
