import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/pages/weather_page.dart';
import 'package:weather_app_with_clean_architecture/features/weather/util/injection_container.dart'
    as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di.sl<WeatherBloc>()..add(GetAllWeatherEvent()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WeatherPage(),
      ),
    );
  }
}
