// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i5;

import 'core/network/network_info.dart' as _i6;
import 'features/weather/data/datasources/remote_data_source.dart' as _i7;
import 'features/weather/data/repositories/weather_repo_imp.dart' as _i9;
import 'features/weather/domain/repositories/weather_repo.dart' as _i8;
import 'features/weather/domain/usecases/get_all_weather_usecase.dart' as _i10;
import 'features/weather/presentation/blocs/weather_bloc/weather_bloc.dart'
    as _i11;
import 'injection_injectable_package.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $init(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Client>(() => registerModule.client);
  gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i5.InternetConnection>(
      () => registerModule.internetConnection);
  gh.lazySingleton<_i6.NetworkInfo>(
      () => _i6.NetworkInfoImpl(get<_i5.InternetConnection>()));
  gh.lazySingleton<_i7.WeatherRemoteDataSource>(
      () => _i7.WeatherRemoteDataSourceImp(client: get<_i3.Client>()));
  gh.lazySingleton<_i8.WeatherRepository>(() => _i9.WeatherRepositoryImp(
        get<_i6.NetworkInfo>(),
        remoteDataSource: get<_i7.WeatherRemoteDataSource>(),
      ));
  gh.lazySingleton<_i10.GetAllWeatherUseCase>(
      () => _i10.GetAllWeatherUseCase(get<_i8.WeatherRepository>()));
  gh.factory<_i11.WeatherBloc>(
      () => _i11.WeatherBloc(getAllWeather: get<_i10.GetAllWeatherUseCase>()));
  return get;
}

class _$RegisterModule extends _i12.RegisterModule {}
