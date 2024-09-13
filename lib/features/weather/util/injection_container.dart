import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app_with_clean_architecture/core/network/network_info.dart';
import 'package:weather_app_with_clean_architecture/features/weather/data/datasources/remote_data_source.dart';
import 'package:weather_app_with_clean_architecture/features/weather/data/repositories/weather_repo_imp.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/repositories/weather_repo.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/usecases/get_all_weather_usecase.dart';
import 'package:weather_app_with_clean_architecture/features/weather/presentation/blocs/weather_bloc/weather_bloc.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - weather

  // bloc

  sl.registerFactory(() => WeatherBloc(getAllWeather: sl()));

  // usecases
  sl.registerLazySingleton(() => GetAllWeatherUseCase(sl()));

  // repository
  sl.registerLazySingleton<WeatherRepository>(
      () => WeatherRepositoryImp(sl(), remoteDataSource: sl()));

  // datasources

  sl.registerLazySingleton<WeatherRemoteDataSource>(
      () => WeatherRemoteDataSourceImp(client: sl()));

  //! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnection());
}
