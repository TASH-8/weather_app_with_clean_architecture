import 'package:flutter/material.dart';
import 'package:weather_app_with_clean_architecture/core/widgets/texts_widget.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/entities/weather_main_entity.dart';

class DetailSecondCustomRow extends StatelessWidget {
  const DetailSecondCustomRow({
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
              Icons.water_drop,
              color: Colors.amber,
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                const TextCustomWidget(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    textInput: 'HUMIDITY',
                    textColor: Colors.white),
                TextCustomWidget(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    textInput: '${weather.main.humidity} %',
                    textColor: Colors.white),
              ],
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.air,
              color: Colors.amber,
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                const TextCustomWidget(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    textInput: 'PRESSURE',
                    textColor: Colors.white),
                TextCustomWidget(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    textInput: '${weather.main.pressure} HP',
                    textColor: Colors.white),
              ],
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.leaderboard,
              color: Colors.amber,
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                const TextCustomWidget(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    textInput: 'SEA-LEVEL',
                    textColor: Colors.white),
                TextCustomWidget(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    textInput: '${weather.main.sea_level} m',
                    textColor: Colors.white),
              ],
            )
          ],
        ),
      ],
    );
  }
}
