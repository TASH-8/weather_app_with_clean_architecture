import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/pages/weather_page.dart';

import 'injection_injectable_package.dart' as di;
import 'injection_injectable_package.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final WeatherBloc bloc = getIt<WeatherBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => bloc..add(GetAllWeatherEvent()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WeatherPage(),
      ),
    );
  }
}
