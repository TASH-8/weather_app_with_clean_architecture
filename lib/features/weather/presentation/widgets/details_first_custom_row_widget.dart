import 'package:flutter/material.dart';
import 'package:weather_app_with_clean_architecture/core/widgets/texts_widget.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/entities/weather_main_entity.dart';

class DetailFirstCustomRow extends StatelessWidget {
  const DetailFirstCustomRow({
    super.key,
    required this.weather,
  });

  final WeatherMainEntity weather;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.wind_power,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                const TextCustomWidget(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    textInput: 'WIND',
                    textColor: Colors.white),
                TextCustomWidget(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  textInput: '${weather.wind.speed} KM/H',
                  textColor: Colors.white,
                )
              ],
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.sunny,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                const TextCustomWidget(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    textInput: 'MAX',
                    textColor: Colors.white),
                TextCustomWidget(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    textInput: '${weather.main.temp_max.toStringAsFixed(2)} °C',
                    textColor: Colors.white),
              ],
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.wind_power,
              color: Colors.white,
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                const TextCustomWidget(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    textInput: 'MIN',
                    textColor: Colors.white),
                TextCustomWidget(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    textInput: '${weather.main.temp_min.toStringAsFixed(2)} °C',
                    textColor: Colors.white),
              ],
            )
          ],
        ),
      ],
    );
  }
}
