import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app_with_clean_architecture/core/errors/exceptions.dart';
import 'package:weather_app_with_clean_architecture/core/errors/faluires.dart';
import 'package:weather_app_with_clean_architecture/core/network/network_info.dart';
import 'package:weather_app_with_clean_architecture/features/weather/data/datasources/remote_data_source.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/entities/weather_main_entity.dart';
import 'package:weather_app_with_clean_architecture/features/weather/domain/repositories/weather_repo.dart';



@LazySingleton(as:WeatherRepository)
class WeatherRepositoryImp implements WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;
  WeatherRepositoryImp(this.networkInfo, {required this.remoteDataSource});
  @override
  Future<Either<Faliure, WeatherMainEntity>> getAllWeather() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteWeather = await remoteDataSource.getAllWeather();

        return Right(remoteWeather);
      } on ServerException {
        return Left(ServerFaliure());
      }
    } else {
      return Left(OfflineFaliure());
    }
  }
}
