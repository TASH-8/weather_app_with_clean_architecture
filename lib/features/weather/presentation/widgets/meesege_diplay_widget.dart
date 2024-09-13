import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/blocs/weather_bloc/weather_bloc.dart';

class MessegeDisplayWidget extends StatelessWidget {
  final String messege;

  const MessegeDisplayWidget({super.key, required this.messege});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF676BD0),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Text(
                messege,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const TryAgainBtn()
          ],
        )),
      ),
    );
  }
}

class TryAgainBtn extends StatelessWidget {
  const TryAgainBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        context.read<WeatherBloc>().add(GetAllWeatherEvent());
      },
      icon: const Icon(Icons.restart_alt_rounded),
      label: const Text('Try again'),
    );
  }
}
