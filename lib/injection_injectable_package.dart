import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'injection_injectable_package.config.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

final getIt = GetIt.instance;

@module
abstract class RegisterModule {
  @lazySingleton
  InternetConnection get internetConnection => InternetConnection();

  @lazySingleton
  http.Client get client => http.Client();

  @lazySingleton
  Dio get dio => Dio();
}

@InjectableInit(
  initializerName: r'$init',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() async => $init(getIt);
